-- lua's entire source code is 600kb.
-- it really just doesn't have built-ins for these.
function print_arr(a)
	io.write "{"
	for i, v in ipairs(a) do
		io.write(v, i ~= #a and "," or "")
	end
	io.write "}\n"
end

function has(t, test)
	for _, val in pairs(t) do
		if val == test then
			return true
		end
	end
	return false
end

--------------------------------------------------------------------------------

local favourites = {
	"õun", "pirn", "ploom"
}
io.write"jada:\t\t"
print_arr(favourites)

io.write"esimene:\t"
print(favourites[1])

io.write"lisand:\t\t"
table.insert(favourites, "tähtvili")
print(favourites[#favourites])

io.write"muutus:\t\t"
favourites[2] = "kirss"
print_arr(favourites)

io.write"`õun` on:\t"
print(has(favourites, "õun"))

io.write"kogus:\t\t"
print(#favourites)

io.write"eemaldus:\t"
table.remove(favourites, 3)
print_arr(favourites)

io.write"tagurpidi:\t"
local newlist = {}
for _, v in ipairs(favourites) do
	table.insert(newlist, 1, v)
end
favourites, newlist = newlist, nil
print_arr(favourites)

io.write"sorteeritud:\t"
table.sort(favourites)
print_arr(favourites)

