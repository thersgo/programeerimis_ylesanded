text = input("kirjuta teksti: ").strip()

if len(text) < 7:
	print("tekst peab vähemalt 7 märki pikk olema!")
elif len(text) % 2 == 0:
	print("tekstis peab olema paaritu arv märke!")
else:
	mid = int(len(text) / 2)
	print(text[mid-1:mid+2])
