import math

print("Ringi pindala ja ümbermõõt")
radius = float(input("Sisesta raadius: "))

print(f"pindala:\t{radius * math.pi ** 2:.4f}")
print(f"ümbermõõt:\t{2 * radius * math.pi:.4f}")
