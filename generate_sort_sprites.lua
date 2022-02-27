local folder = "./CraftBoyDatapack/data/sort/functions/"
local sprites = io.open(folder .. "sprites.mcfunction", "w")

local oam_min = 0xFE00
local oam_max = 0xFEA0 - 4

local n = 0

for i = oam_min, oam_max, 4 do
    sprites:write([[
scoreboard players operation lower_]] .. n .. [[ sort = ]] .. i .. [[ oam
scoreboard players operation higher_]] .. n .. [[ sort = ]] .. i .. [[ oam

scoreboard players remove lower_]] .. n .. [[ sort 16
execute if score 2_2 binary matches 0 run scoreboard players remove higher_]] ..
                      n .. [[ sort 8

scoreboard players operation y_]] .. n .. [[ sort = ]] .. i .. [[ oam

scoreboard players set x_]] .. n .. [[ sort 1000000000
execute if score lower_]] .. n ..
                      [[ sort <= 65348 io if score 65348 io < higher_]] .. n ..
                      [[ sort run scoreboard players operation x_]] .. n ..
                      [[ sort = ]] .. i + 1 .. [[ oam

scoreboard players set value_]] .. n .. [[ sort ]] .. i .. [[



]])
    n = n + 1
end

sprites:write("function sort:sort")
