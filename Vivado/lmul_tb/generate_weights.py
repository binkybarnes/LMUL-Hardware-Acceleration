import torch
import torch.nn as nn
import torch.optim as optim
from torchvision import datasets, transforms

# Define the model
class SimpleMNISTModel(nn.Module):
    def __init__(self):
        super(SimpleMNISTModel, self).__init__()
        self.fc1 = nn.Linear(28*28, 128)
        self.relu = nn.ReLU()
        self.fc2 = nn.Linear(128, 10)

    def forward(self, x):
        x = x.view(-1, 28*28)
        x = self.relu(self.fc1(x))
        x = self.fc2(x)
        return x

# Instantiate and train the model
model = SimpleMNISTModel()

# Data loader
transform = transforms.ToTensor()
train_dataset = datasets.MNIST('.', train=True, download=False, transform=transform)
train_loader = torch.utils.data.DataLoader(train_dataset, batch_size=64, shuffle=True)

# Loss and optimizer
criterion = nn.CrossEntropyLoss()
optimizer = optim.Adam(model.parameters(), lr=0.001)

# Training loop (few epochs for quick training)
for epoch in range(3):
    for batch_idx, (data, target) in enumerate(train_loader):
        optimizer.zero_grad()
        output = model(data)
        loss = criterion(output, target)
        loss.backward()
        optimizer.step()
        if batch_idx % 100 == 0:
            print(f"Epoch {epoch} Batch {batch_idx} Loss {loss.item():.4f}")

# Save model state_dict
torch.save(model.state_dict(), 'mnist_simple.pth')

import numpy as np
import struct

def float_to_bf16(f: float) -> int:
    # Convert a float to BF16 represented as an integer
    if np.isnan(f):
        return 0x7FC0
    if np.isinf(f):
        return 0xFF80 if f < 0 else 0x7F80
    # Clip to float32 range
    f = np.clip(f, -3.4e38, 3.4e38)
    f32_bits = struct.unpack('>I', struct.pack('>f', np.float32(f)))[0]
    bf16_bits = (f32_bits >> 16) & 0xFFFF
    return bf16_bits

# Extract weights from fc1 and fc2 layers
fc1_weights = model.fc1.weight.detach().cpu().numpy()  # shape (128, 784)
fc2_weights = model.fc2.weight.detach().cpu().numpy()  # shape (10, 128)

# Save fc1 weights
with open('LMUL_Hardware.sim/sim_1/behav/xsim/fc1_weights.mem', 'w') as f:
    for neuron_weights in fc1_weights:
        for w in neuron_weights:
            bf16_val = float_to_bf16(w)
            f.write(f'{bf16_val:04X}\n')

# Save fc2 weights
with open('LMUL_Hardware.sim/sim_1/behav/xsim/fc2_weights.mem', 'w') as f:
    for neuron_weights in fc2_weights:
        for w in neuron_weights:
            bf16_val = float_to_bf16(w)
            f.write(f'{bf16_val:04X}\n')

# Extract biases from fc1 and fc2 layers
fc1_biases = model.fc1.bias.detach().cpu().numpy()  # shape (128,)
fc2_biases = model.fc2.bias.detach().cpu().numpy()  # shape (10,)

# Save fc1 biases
with open('LMUL_Hardware.sim/sim_1/behav/xsim/fc1_biases.mem', 'w') as f:
    for b in fc1_biases:
        bf16_val = float_to_bf16(b)
        f.write(f'{bf16_val:04X}\n')

# Save fc2 biases
with open('LMUL_Hardware.sim/sim_1/behav/xsim/fc2_biases.mem', 'w') as f:
    for b in fc2_biases:
        bf16_val = float_to_bf16(b)
        f.write(f'{bf16_val:04X}\n')
