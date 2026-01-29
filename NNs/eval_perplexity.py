import argparse
import torch
import numpy as np
#this is our model.py
from model import GPT, GPTConfig
#use LMUL? based on CLI flag
#e.g uses via CLI 
#python3 eval_perplexity.py --out_dir=out-shakespeare-char
#python3 eval_perplexity.py --out_dir=out-shakespeare-char --use_lmul
parser = argparse.ArgumentParser()
parser.add_argument(
    "--use_lmul",
    action="store_true",
    help="Use LMUL instead of standard nn.Linear; activate LMUL matmul operations."
)
parser.add_argument(
    "--out_dir",
    type=str,
    default="out",
    help="Directory containing ckpt.pt"
)
args = parser.parse_args()
use_lmul = args.use_lmul



val_path = "data/shakespeare_char/val.bin"
ckpt_path = f"{args.out_dir}/ckpt.pt" 
#we are stuffing it into CPU because DSMLP has no GPU :(
device = "cpu"
#block size is number of tokens evaluated per sample
block_size = 32                   
num_batches = 50                 
batch_size = 4
print(f"Using LMUL: {use_lmul}")
print(f"Using | block_size: {block_size} | num_batches: {num_batches} | batch_size: {batch_size}\n ==> For a total of {num_batches * batch_size * block_size} tokens, or {block_size} tokens per sequence among {num_batches * batch_size} sequences")
checkpoint = torch.load(ckpt_path, map_location=device)
gptconf = GPTConfig(**checkpoint["model_args"])
model = GPT(gptconf, use_lmul=use_lmul)
model = torch.compile(model)
model.load_state_dict(checkpoint["model"])
model.to(device)
model.eval()

#load val data
val_data = np.memmap(val_path, dtype=np.uint16, mode="r")

def get_batch():
    ix = torch.randint(len(val_data) - block_size - 1, (batch_size,))
    x = torch.stack([
        torch.from_numpy(val_data[i:i+block_size].astype(np.int64))
        for i in ix
    ])
    y = torch.stack([
        torch.from_numpy(val_data[i+1:i+block_size+1].astype(np.int64))
        for i in ix
    ])
    return x.to(device), y.to(device)
#actual perplexity eval
losses = []
with torch.no_grad():
    for i in range(num_batches):
        x, y = get_batch()
        logits, _ = model(x, y)
        loss = torch.nn.functional.cross_entropy(
            logits.view(-1, logits.size(-1)),
            y.view(-1)
        )
        losses.append(loss.item())
mean_loss = sum(losses)/len(losses)
#note that this is just the def of pplxty
pplxty = torch.exp(torch.tensor(mean_loss))
print(f"Validation loss: {mean_loss:.4f}")
print(f"Validation perplexity: {pplxty:.2f}")
