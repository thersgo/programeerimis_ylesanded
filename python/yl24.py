print("Insert (up to) the first 11 digits of the barcode")
print("(or `exit` to quit)")

while True:
	code = input()
	if len(code) > 11:
		print("Too many digits; Try again.")
	elif code == "exit":
		exit()
	elif not code.isdigit():
		print("The code can only contain digits (0-9); Try again.")
	else:
		break

code = code.zfill(11)
check = 0

for i, digit in enumerate(code):
	check += int(digit) * (3 if i % 2 == 0 else 1)


check = (10 - check) % 10

print(f"The check digit for this code would be {check}.")

#