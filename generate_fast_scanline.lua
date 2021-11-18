local folder = "./CraftBoyDatapack/data/ppu/functions/"
local master = io.open(folder .. "scanline.mcfunction", "w")

local tile_vram = 0x8000
local map_vram = 0x9800

master:write(
    "tp @e[type=minecraft:armor_stand,name=inner_screen_paste1] @e[type=minecraft:armor_stand,name=inner_screen_paste,limit=1]\n")

for i = 0, 143 do
    master:write("execute if score 65348 io matches " .. i ..
                     " as @e[type=minecraft:armor_stand,name=inner_screen_paste1] at @s run tp @s ~ ~ ~" ..
                     i .. "\n")
end

master:write([[
scoreboard players set y ppu 255

scoreboard players operation y ppu -= 65346 io
scoreboard players operation y ppu -= 65348 io

scoreboard players set x ppu 0
scoreboard players operation x ppu += 65347 io


execute if score y ppu matches ..-1 run scoreboard players add y ppu 256
execute if score y ppu matches 256.. run scoreboard players remove y ppu 256


scoreboard players operation line ppu = y ppu
scoreboard players operation line ppu /= 8 constants
scoreboard players operation tileY ppu = line ppu
scoreboard players operation line ppu *= 8 constants


scoreboard players operation y ppu -= line ppu


scoreboard players remove tileY ppu 31
scoreboard players operation tileY ppu *= -1 constants


scoreboard players operation tileX ppu = x ppu
scoreboard players operation tileX ppu /= 8 constants


scoreboard players operation in binary = 65344 io
function util:binary_split2


scoreboard players operation in binary = 65351 io
function util:binary_split3


execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run fill ~ ~ ~ ~159 ~ ~ minecraft:red_concrete


execute if score 0_2 binary matches 1 run function ppu:tile
execute if score 0_2 binary matches 1 run function ppu:tile
execute if score 0_2 binary matches 1 run function ppu:tile
execute if score 0_2 binary matches 1 run function ppu:tile
execute if score 0_2 binary matches 1 run function ppu:tile
execute if score 0_2 binary matches 1 run function ppu:tile
execute if score 0_2 binary matches 1 run function ppu:tile
execute if score 0_2 binary matches 1 run function ppu:tile
execute if score 0_2 binary matches 1 run function ppu:tile
execute if score 0_2 binary matches 1 run function ppu:tile
execute if score 0_2 binary matches 1 run function ppu:tile
execute if score 0_2 binary matches 1 run function ppu:tile
execute if score 0_2 binary matches 1 run function ppu:tile
execute if score 0_2 binary matches 1 run function ppu:tile
execute if score 0_2 binary matches 1 run function ppu:tile
execute if score 0_2 binary matches 1 run function ppu:tile
execute if score 0_2 binary matches 1 run function ppu:tile
execute if score 0_2 binary matches 1 run function ppu:tile
execute if score 0_2 binary matches 1 run function ppu:tile
execute if score 0_2 binary matches 1 run function ppu:tile


execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run data get entity @e[type=minecraft:armor_stand,name=inner_screen_paste,limit=1] Pos[0]

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run fill ~ ~ ~ ~7 ~ ~ minecraft:red_concrete

function ppu:sprites
]])
