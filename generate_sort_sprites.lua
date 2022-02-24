local folder = "./CraftBoyDatapack/data/sort/functions/"
local sprites = io.open(folder .. "sprites.mcfunction", "w")

local oam_min = 0xFE00
local oam_max = 0xFEA0 - 4

local n = 0

for i = oam_max, oam_min, -4 do
    sprites:write([[
scoreboard players operation sprite_lower ppu = ]] .. i .. [[ oam
scoreboard players operation sprite_higher ppu = ]] .. i .. [[ oam
scoreboard players remove sprite_lower ppu 16
execute if score 2_2 binary matches 0 run scoreboard players remove sprite_higher ppu 8

data modify entity @e[type=minecraft:armor_stand,name=sort_]] .. n ..
                      [[,limit=1] ArmorItems[3].tag.Damage set value 1000000000
execute if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu store result entity @e[type=minecraft:armor_stand,name=sort_]] ..
                      n ..
                      [[,limit=1] ArmorItems[3].tag.Damage int 1 run scoreboard players get ]] ..
                      i + 1 .. [[ oam
data modify entity @e[type=minecraft:armor_stand,name=sort_]] .. n ..
                      [[,limit=1] ArmorItems[2].tag.Damage set value ]] .. i ..
                      [[

]])
    n = n + 1
end

sprites:write(
    "execute as @e[type=minecraft:armor_stand,name=sort_root] run function sort:sort")
