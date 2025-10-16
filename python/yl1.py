CONVERSION_RATE = 15.6466

print("Kroonidest eurodesse")
amount = float(input("Sisesta kroonide arv: "))
print(f"{int(amount / CONVERSION_RATE * 100) / 100} eurot")
