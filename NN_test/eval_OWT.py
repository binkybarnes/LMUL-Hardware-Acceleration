import argparse
import torch
import numpy as np
from model import GPT, GPTConfig
import random
#basically eval_perplexity but with: 
#Evaluate using contiguous slices from val.bin to preserve context.
#Compute mean cross-entropy over all tokens, then exponentiate for the realistic PPL.

SEED = 67
random.seed(SEED)
np.random.seed(SEED)
torch.manual_seed(SEED)
torch.cuda.manual_seed_all(SEED)  #not needed for CPU, but harmless (i think?)

def panel_type(s: str) -> str:
    if len(s) != 3 or any(c not in "01" for c in s):
        raise argparse.ArgumentTypeError(
            "--panel must be a 3-bit binary string like '101'"
        )
    return s

parser = argparse.ArgumentParser()
parser.add_argument("--use_lmul", action="store_true", help="Use LMUL instead of standard nn.Linear")
parser.add_argument("--out_dir", type=str, default="out", help="Directory containing ckpt.pt")
parser.add_argument(
    "--panel",
    nargs="?",
    const="111",
    default=None,
    type=panel_type,
    help="Choose which GPT layers use LMUL. 3-bit string like '101'. Defaults to '111'"
)
parser.add_argument("--OWT", action="store_true", help="Use OpenWebText val.bin")
args = parser.parse_args()

use_lmul = args.use_lmul
LAYER_ORDER = ("CSA", "MLP", "HEAD")
panel_dict = (
    dict(zip(LAYER_ORDER, (c == "1" for c in args.panel)))
    if args.panel is not None
    else None
)

val_path = "data/shakespeare_char/val.bin"
if args.OWT:
    val_path = "data/openwebtext/val.bin"

ckpt_path = f"{args.out_dir}/ckpt.pt"
device = "cpu"

#Load model
checkpoint = torch.load(ckpt_path, map_location=device)
gptconf = GPTConfig(**checkpoint["model_args"])
model = GPT(gptconf, use_lmul=use_lmul, panel=panel_dict)
model.load_state_dict(checkpoint["model"], strict=False)
model.to(device)
model.eval()

#block_size = checkpoint["model_args"]["block_size"]
block_size = 32
print(f"Using block_size={block_size}, evaluating on val data at CPU")
#val data load
val_data = np.memmap(val_path, dtype=np.uint16, mode="r")
vocab_size = checkpoint["model_args"]["vocab_size"]


batch_size = 8
num_batches = 50
total_val_tokens = 0
total_loss = 0.0
print(f"Using | block_size: {block_size} | num_batches: {num_batches} | batch_size: {batch_size}\n ==> For a total of {num_batches * batch_size * block_size} tokens, or {block_size} tokens per sequence among {num_batches * batch_size} sequences")
with torch.no_grad():
    for batch_idx in range(num_batches):
        start_idx = batch_idx * batch_size * block_size
        # make sure we don't overflow val_data
        if start_idx + batch_size * block_size + 1 >= len(val_data):
            break
        x_batch = []
        y_batch = []
        for i in range(batch_size):
            idx = start_idx + i * block_size
            x = torch.from_numpy(val_data[idx : idx + block_size].astype(np.int64))
            y = torch.from_numpy(val_data[idx + 1 : idx + block_size + 1].astype(np.int64))
            x_batch.append(x)
            y_batch.append(y)
        x_batch = torch.stack(x_batch).to(device)
        y_batch = torch.stack(y_batch).to(device)

        logits, _ = model(x_batch, y_batch)
        loss = torch.nn.functional.cross_entropy(
            logits.view(-1, logits.size(-1)),
            y_batch.view(-1),
            reduction="sum"  # sum over all tokens in this batch
        )
        total_loss += loss.item()
        total_val_tokens += y_batch.numel()

mean_loss = total_loss / total_val_tokens
pplxty = torch.exp(torch.tensor(mean_loss))
print(f"Validation loss per token: {mean_loss:.4f}")
print(f"Validation perplexity: {pplxty:.2f}")

