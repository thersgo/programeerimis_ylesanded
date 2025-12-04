import random

print("""Mängime kivi-paber-käärid!
kirjuta kas kivi, paber, või käärid (ära muretse - ma valin enne sind)
või kirjuta `lahku` et lõpetada mängimist.""")


choices = ["kivi", "paber", "käärid"]

while True:
	bot = random.randint(0, 2)
	str = input()
	
	if str == "lahku":
		break
	elif str in choices:
		res = choices.index(str)
		print(f"Ma valisin {choices[bot]}", end = "")
		if res == (bot + 1) % 3:
			print(", seega sa võitsid!")
		elif res == bot:
			print(" ka - jäime viiki.")
		else:
			print(", seega mina võitsin :^)")
