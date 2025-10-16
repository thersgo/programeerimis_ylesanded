--------------------------------------------------------------------------------
-- triangle type
--------------------------------------------------------------------------------

print("Kolmnurga liik")

local sides = {}
for i = 1, 3 do
	io.write(("sisesta %i. külg: \t"):format(i))
	table.insert(sides, io.read("*number"))
end

table.sort(sides)
local a, b, c = table.unpack(sides)

if a + b < c then
	print("See küll pole päris kolmnurk! (lühemad küljed ei ulatu kokku!)")
else
	print(("See kolmnurk on %s."):format(
		   (a == b and b == c) and "võrdkülgne"
		or (a == b or b == c)  and "võrdhaarne"
		or "erikülgne"
	))
end

--------------------------------------------------------------------------------
