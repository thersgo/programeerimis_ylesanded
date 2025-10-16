print("Väiksem kahest arvust")

first  = float(input("Sisesta esimene arv: "))
second = float(input("Sisesta teine arv: "))

print(f"{int(first) if first < second else int(second)} on väiksem.")
