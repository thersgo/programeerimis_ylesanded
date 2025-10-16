--------------------------------------------------------------------------------
-- Minimum between two
--------------------------------------------------------------------------------

io.write [[
Väiksem kahest arvust
Sisesta esimene arv:	]]

local first = io.read "*number"

io.write "Sisesta teine arv:\t"

local second = io.read "*number"

print(
	("%d on väiksem."):format(first < second and first or second)
)
--------------------------------------------------------------------------------
