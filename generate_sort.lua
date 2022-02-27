local folder = "./CraftBoyDatapack/data/sort/functions/"
local sort = io.open(folder .. "sort.mcfunction", "w")

local oam_min = 0xFE00
local oam_max = 0xFEA0 - 4

local n = 0

sort:write("scoreboard players set sort craftboy 0\n")

for i = oam_max - 4, oam_min, -4 do
    sort:write([[
execute if score x_]] .. n .. [[ sort > x_]] .. (n + 1) ..
                   [[ sort run function sort:swap_]] .. n .. [[


]])
    n = n + 1
end

sort:write("execute if score sort craftboy matches 1 run function sort:sort")
