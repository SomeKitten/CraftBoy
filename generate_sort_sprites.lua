local folder = "./CraftBoyDatapack/data/sort/functions/"
local sprites = io.open(folder .. "sprites.mcfunction", "w")

local oam_min = 0xFE00
local oam_max = 0xFEA0 - 4

local n = 0

for i = oam_max, oam_min, -4 do
    sprites:write([[
execute store result entity @e[type=minecraft:armor_stand,name=sort_]] .. n ..
                      [[,limit=1] ArmorItems[3].tag.Damage int 1 run scoreboard players get ]] ..
                      i + 1 .. [[ oam
data modify entity @e[type=minecraft:armor_stand,name=sort_]] .. n ..
                      [[,limit=1] ArmorItems[2].tag.Damage set value ]] .. i ..
                      [[

]])
    n = n + 1
end

sprites:write("function sort:sort")
