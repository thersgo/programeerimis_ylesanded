--------------------------------------------------------------------------------
-- value tables
--------------------------------------------------------------------------------

-- i am simply too lazy at the moment to make this into a function if i'm only
-- gona use it twice ever

io.write [[
.-------------------------------.
|A AND (B OR C)                 |
|-------.-------.-------.-------|
|A      |B      |C      |ans:   |
|-------+-------+-------+-------|
]]

for A = 0, 1 do
	A = A == 1
	for B = 0, 1 do
		B = B == 1
		for C = 0, 1 do
			C = C == 1
			print(("|%s\t|%s\t|%s\t|%s\t|"):format(
				A, B, C, A and (B or C)
			))
		end
	end
end

print "'-------'-------'-------'-------'"
print()

io.write [[
.-------------------------------.
|A ~ B OR NOT(C AND A)          |
|-------.-------.-------.-------|
|A      |B      |C      |ans:   |
|-------+-------+-------+-------|
]]

for A = 0, 1 do
	A = A == 1
	for B = 0, 1 do
		B = B == 1
		for C = 0, 1 do
			C = C == 1
			print(("|%s\t|%s\t|%s\t|%s\t|"):format(
				A, B, C, A == B or not(C and A)
			))
		end
	end
end

print "'-------'-------'-------'-------'"
print()

-- A ~ B OR NOT(C AND A)

--------------------------------------------------------------------------------
