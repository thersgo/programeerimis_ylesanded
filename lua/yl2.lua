--------------------------------------------------------------------------------
-- circle formulas
--------------------------------------------------------------------------------

io.write [[
Ringi pindala ja ümbermõõt
Sisesta raadius: ]]

local radius = tonumber(io.read("*line"))

print(("pindala:\t%.4f"  ):format(radius * math.pi ^ 2))
print(("ümbermõõt:\t%.4f"):format(2 * radius * math.pi))


--------------------------------------------------------------------------------
