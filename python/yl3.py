print("Naljakas arvutus")

digit = input("sisesta üks number (1...9): ")[0]

a = int(digit)
b = int(digit + digit)
c = int(digit + digit + digit)

print("{} + {} + {} = {}".format(a, b, c, a + b + c))
