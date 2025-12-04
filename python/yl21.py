import random

answer = random.randint(0, 100)

print("Ma mõtlen ühele numbrile 0st 100ni. Arva ära, mis see on: ")

while True:
	guess = int(input())
	if guess < answer:
		print("Ei, see on liiga väike. ")
	elif guess > answer:
		print("Ei, see on liiga suur. ")
	elif guess == answer:
		break

print("Täppi said!")