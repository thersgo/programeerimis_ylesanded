print("Suurim kolmest arvust")

first  = int(input("Sisesta esimene arv: "))
second = int(input("Sisesta teine arv:   "))
third  = int(input("Sisesta kolmas arv:  "))

high1 = first if first > second else second

print(f"{high1 if high1 > third else third} on suurim.")
