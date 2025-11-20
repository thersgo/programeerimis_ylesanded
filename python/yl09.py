print("Kolmnurga liik")

sides = []
for i in range(3):
    sides.append(float(input(f"sisesta {1+i}. külg: ")))

sides.sort()
(a, b, c) = sides

if a < 0 or b < 0 or c < 0:
	print("Ükski külg ei saa negatiivse suurusega olla!")
elif a + b < c:
	print("See küll pole päris kolmnurk! (lühemad küljed ei ulatu kokku!)")
elif a == b == c: # chained comparison is the only* good thing about python
	print("See kolmnurk on võrdkülgne.")
elif a == b or b == c:
	print("See kolmnurk on võrdhaarne.")
else:
	print("see kolmnurk on erikülgne.")
