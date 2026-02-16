import numpy as np
import struct
import torch
from torchvision import datasets

def float_to_bf16(f: float) -> int:
    if np.isnan(f):
        return 0x7FC0
    if np.isinf(f):
        return 0xFF80 if f < 0 else 0x7F80
    f = np.clip(f, -3.4e38, 3.4e38)
    f32_bits = struct.unpack('>I', struct.pack('>f', np.float32(f)))[0]
    bf16_bits = (f32_bits >> 16) & 0xFFFF
    return bf16_bits

def create_bf16_image(image_array):
    """
    Convert a 2D numpy array image into a list of BF16 formatted 16-bit integers.
    """
    # Normalize pixels to [0,1]
    norm_pixels = image_array / 255.0
    # Flatten the array and convert each pixel
    bf16_pixels = [float_to_bf16(p) for p in norm_pixels.flatten()]
    return bf16_pixels

# Load MNIST test dataset using PyTorch
test_dataset = datasets.MNIST(root= "", train= False, download= False)
test_images = []
test_labels = []

# Load first 1000 images and labels
for i in range(1000):
    img, label = test_dataset[i]
    # Convert PIL image to numpy array
    img_np = np.array(img)
    test_images.append(img_np)
    test_labels.append(label)

# Convert images to BF16 format
bf16_test_x = []
for img in test_images:
    bf16_img = create_bf16_image(img)
    bf16_test_x.extend(bf16_img)  # Flattened list of BF16 pixel data

# Save images to memory file
with open('LMUL_Hardware.sim/sim_1/behav/xsim/test_x.mem', 'w') as f_x:
    for val in bf16_test_x:
        f_x.write(f"{val:04X}\n")  # 4 hex digits per BF16 value

# Save labels to memory file
with open('test_y.mem', 'w') as f_y:
    for label in test_labels:
        # Store labels as integers, e.g., 0-9
        f_y.write(f"{label}\n")