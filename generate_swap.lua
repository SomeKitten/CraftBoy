local folder = "./CraftBoyDatapack/data/craftboy/functions/sort/"

local oam_min = 0xFE00
local oam_max = 0xFEA0 - 4

local n = 0

for i = oam_max - 4, oam_min, -4 do
    local swap = io.open(folder .. "swap_" .. n .. ".mcfunction", "w")
    swap:write([[
scoreboard players operation swap sort = y_]] .. n .. [[ sort
scoreboard players operation y_]] .. n .. [[ sort = y_]] .. (n + 1) .. [[ sort
scoreboard players operation y_]] .. (n + 1) .. [[ sort = swap sort

scoreboard players operation swap sort = x_]] .. n .. [[ sort
scoreboard players operation x_]] .. n .. [[ sort = x_]] .. (n + 1) .. [[ sort
scoreboard players operation x_]] .. (n + 1) .. [[ sort = swap sort

scoreboard players operation swap sort = lower_]] .. n .. [[ sort
scoreboard players operation lower_]] .. n .. [[ sort = lower_]] .. (n + 1) ..
                   [[ sort
scoreboard players operation lower_]] .. (n + 1) .. [[ sort = swap sort

scoreboard players operation swap sort = higher_]] .. n .. [[ sort
scoreboard players operation higher_]] .. n .. [[ sort = higher_]] .. (n + 1) ..
                   [[ sort
scoreboard players operation higher_]] .. (n + 1) .. [[ sort = swap sort

scoreboard players operation swap sort = value_]] .. n .. [[ sort
scoreboard players operation value_]] .. n .. [[ sort = value_]] .. (n + 1) ..
                   [[ sort
scoreboard players operation value_]] .. (n + 1) .. [[ sort = swap sort

scoreboard players set sort craftboy 1
]])
    swap:close()
    n = n + 1
end
