
name = input("Mis on teie nimi?")
print(f"tervist, {name}!")

place = input("Kus te elate?").lower()
if place.find("saaremaa") != -1:
    print("Kohalik, või?")
else:
    print("Kõlab nagu tore koht :)")

age = int(input("Kui vana olete?"))

if age < 18:
    print("Olete liiga noor, et autot juhtida :/")
elif age == 18:
    print("Palju õnne täisealiseks saamise puhul!")
else:
    print("Olete ilmselt autojuhtimiseks õiges eas.")
