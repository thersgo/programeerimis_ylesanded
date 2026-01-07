print("Kolmnurga liik")

sides = []
for i in range(3):
    sides.append(float(input(f"sisesta {1+i}. külg: ")))
    if sides[-1] < 0:
        print("Ükski külg ei saa negatiivse pikkusega olla!")
        quit()

sides.sort()
a, b, c = sides

if a + b < c:
    print("See küll pole päris kolmnurk! (lühemad küljed ei ulatu kokku!)")
    quit()

print(
    "See kolmnurk on " + (
        "võrdkülgne" if a == c else
        "võrdhaarne" if a == b or b == c else
        "erikülgne"
    )
)
