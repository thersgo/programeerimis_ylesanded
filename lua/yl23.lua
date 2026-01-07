--------------------------------------------------------------------------------
-- terminal blackjack                                                         --
--------------------------------------------------------------------------------

local base_deck = {}

for rank = 1, 13 do
	for suit = 1, 4 do
		table.insert(base_deck, rank)
	end
end

new_deck = function()
	-- copy
	local d = {}
	table.move(base_deck, 1, #base_deck, 1, d)
	
	-- shuffle
	for i = #d, 2, -1 do
		local j = math.random(i)
		d[i], d[j] = d[j], d[i]
	end
	
	return d
end

local deck = new_deck()

function hit()
	if #deck == 0 then
		deck = new_deck()
	end
	return table.remove(deck)
end

function total(t)
	local sum, aces = 0, 0
	for _, v in ipairs(t) do
		sum = sum + math.min(v, 10)
		if v == 1 then
			aces = aces + 1
		end
	end
	while aces > 0 and sum + 10 <= 21 do
		aces = aces - 1
		sum = sum + 10
	end
	
	return sum
end

function show_hand(t)
	local face = {["1"] = "A", ["11"] = "J", ["12"] = "Q", ["13"] = "K"}
	
	return table.concat(t, " "):gsub("%S+", face)
end

while true do
	local player = {hit(), hit()}
	local dealer = {hit(), hit()}
	
	print("hand:", show_hand(player), total(player))
	
	repeat
		if total(player) == 21 then
			print("BLACKJACK HELL YEAH\n")
			break
		end
		io.write("(h)it, (s)tay, (f)orfeit, or (q)uit? ")
		input = io.read():lower():sub(1,1)
		if input == 'h' then
			table.insert(player, hit())
			local t = total(player)
			print("player:", show_hand(player), t)
			
			if t > 21 then
				print("uh oh! crash and burn!\n")
				break
			end
		end
	until input ~= 'h'
	
	if input == 'q' then
		break
	end
end



--------------------------------------------------------------------------------
