favourites = ["õun", "pirn", "ploom"]

print(favourites)

print("esimene:", favourites[0])

print("viimane:", favourites[-1])

favourites.append("tähtvili")
print(favourites)

favourites[1] = "kirss"
print(favourites)

print("sisaldab õunu:", "õun" in favourites)

print("pikkus:", len(favourites))

favourites.pop(2)
print(favourites)

favourites.reverse()
print(favourites)

favourites.sort()
print(favourites)
