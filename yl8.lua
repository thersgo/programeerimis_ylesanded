--------------------------------------------------------------------------------
-- is input even
--------------------------------------------------------------------------------

print "Kas on liigaasta?"
io.write "Sisesta aasta:\t"

local number = io.read "*number"

print(("%d %s liigaasta."):format(number,
	(number % 400 == 0 or (number % 4 == 0 and number % 100 ~= 0))
		and "on"
		or "ei ole"
))

--------------------------------------------------------------------------------
