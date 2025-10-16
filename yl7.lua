--------------------------------------------------------------------------------
-- is input even
--------------------------------------------------------------------------------

print "Paarisarvu kontroll"
io.write "Sisesta arv:\t"

local number = io.read "*number"

print(("%d on %s arv."):format(
	number, number % 2 == 0 and "paaris" or "paaritu"
))

--------------------------------------------------------------------------------
