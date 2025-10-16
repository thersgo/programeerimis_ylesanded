--------------------------------------------------------------------------------
-- Maximum of three values
--------------------------------------------------------------------------------

io.write [[
suurim kolmest arvust
Sisesta esimene arv:	]]
local first  = io.read "*number"

io.write "Sisesta teine arv:\t"
local second = io.read "*number"

io.write "Sisesta kolmas arv:\t"
local third  = io.read "*number"

local high1 = first > second and first or second

print(("%d on suurim."):format(high1 > third and high1 or third))

--------------------------------------------------------------------------------

