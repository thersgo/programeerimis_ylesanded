print("Paarisarvu kontroll")

number = float(input("Sisesta arv: "))

print(f"{number} on {"paaris" if number % 2 == 0 else "paaritu"}")
