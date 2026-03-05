import torch
import torch.nn as nn
import torch.nn.functional as F
from torchvision import datasets, transforms

#load MNIST things
train_loader = torch.utils.data.DataLoader(
    datasets.MNIST('.', train=True, download=True, transform=transforms.ToTensor()),
    batch_size=128, shuffle=True
)
test_loader = torch.utils.data.DataLoader(
    datasets.MNIST('.', train=False, transform=transforms.ToTensor()),
    batch_size=1000
)
#LMUL, based on the paper definition (below)
def lmul(a, b, M=7):
    """
    L-Mul approximation based on the paper formula:
    L-Mul(x, y) = (s1 ⊕ s2) × 2^(e1 + e2 - b) × (1 + m1 + m2 + 2^(-L(M)))
    
    where L(M) = { M,     if M ≤ 3
                 { 3,     if M = 4  
                 { 4,     if M > 4
    
    a, b: Input tensors
    M: Precision parameter (bits), assumption is arbitrarily 7
    """
    a, b = a.float(), b.float()
    
    #the XOR (⊕) sign thing in front
    s1 = torch.sign(a)
    s2 = torch.sign(b)
    s = s1 * s2
    #mantissa and exponent
    #frexp returns: x = m × 2^e where m ∈ [0.5, 1)
    m1, e1 = torch.frexp(torch.abs(a))
    m2, e2 = torch.frexp(torch.abs(b))
    #So m_frexp = (1 + m_standard) / 2, thus m_standard = 2*m_frexp - 1
    m1 = 2 * m1 - 1  # Convert [0.5, 1) to [0, 1)
    m2 = 2 * m2 - 1  # Convert [0.5, 1) to [0, 1)
    
    #L(M) 
    if M <= 3:
        L = M
    elif M == 4:
        L = 3
    else:  # M > 4
        L = 4
    
    #bias b (for normalized mantissa, b = 1) (i think?)
    b = 1
    #L-Mul formula: result = s × 2^(e1 + e2 - b) × (1 + m1 + m2 + 2^(-L))
    exponent = e1 + e2 - b
    mantissa = 1 + m1 + m2 + 2**(-L)
    
    #if mantissa >= 2, normalize
    carry = (mantissa >= 2).float()
    mantissa = torch.where(carry == 1, mantissa / 2, mantissa)
    exponent = exponent + carry
    #result
    exponent = exponent.to(torch.int32)
    out = s * torch.ldexp(mantissa, exponent)
    
    return torch.nan_to_num(out, nan=0.0, posinf=float('inf'), neginf=float('-inf'))


def lmul_linear(x, W, b=None, M=7):
    #actual use of lmul for forward pass
    prod = lmul(x.unsqueeze(1), W.unsqueeze(0), M)  # [B,O,I]
    out = prod.sum(dim=2)
    if b is not None:
        out += b
    return out

#MLP for PURELY ACCURACY METRICS
class MLP(nn.Module):
    def __init__(self, use_lmul=False, M=7):
        super().__init__()
        self.fc1 = nn.Linear(28*28, 128)
        self.fc2 = nn.Linear(128, 10)
        self.use_lmul = use_lmul
        self.M = M

    def forward(self, x):
        x = x.view(-1, 28*28)
        if self.use_lmul:
            x = F.relu(lmul_linear(x, self.fc1.weight, self.fc1.bias, self.M))
            x = lmul_linear(x, self.fc2.weight, self.fc2.bias, self.M)
        else:
            x = F.relu(self.fc1(x))
            x = self.fc2(x)
        return F.log_softmax(x, dim=1)

#stereotypical training setup for MLP
def train_model(model, opt, loader, epochs=5):
    print(f"Training Model with {epochs} epochs!")
    model.train()
    for _ in range(epochs):
        for data, target in loader:
            opt.zero_grad()
            loss = F.nll_loss(model(data), target)
            loss.backward()
            opt.step()

#acc test
def test_acc(model, loader):
    model.eval()
    correct = 0
    total = 0
    with torch.no_grad():
        for data, target in loader:
            pred = model(data).argmax(dim=1)
            correct += (pred == target).sum().item()
            total += len(target)
    return 100 * correct / total


#baseline trainin 
model = MLP(use_lmul=False)
opt = torch.optim.Adam(model.parameters(), lr=1e-3)
train_model(model, opt, train_loader, epochs=5)

#normal acc eval (no lmul)
print(f"Baseline accuracy: {test_acc(model, test_loader):.2f}%")
#lmul
model_lmul = MLP(use_lmul=True, M=7)
model_lmul.load_state_dict(model.state_dict())
print(f"L-MUL accuracy: {test_acc(model_lmul, test_loader):.2f}%")
