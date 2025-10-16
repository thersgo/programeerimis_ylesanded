--------------------------------------------------------------------------------
-- EKR -> EUR converter
--------------------------------------------------------------------------------

io.write [[
Kroonidest eurodesse
Sisesta kroonide arv: ]]

local amount = tonumber(io.read("*line"))
local CONVERSION_RATE <const> = 15.6466

io.write(math.floor(amount / CONVERSION_RATE * 100) / 100, " eurot\n")

--------------------------------------------------------------------------------
