print("Kas on liigaasta?")
number = int(input("Sisesta aasta: "))

ans = "on" if number % 400 == 0 or (number % 4 == 0 and number % 100 != 0) else "ei ole"

print(f"{number} {ans} liigaasta")
