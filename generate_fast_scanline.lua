local folder = "./CraftBoyDatapack/data/ppu/functions/"
local master = io.open(folder .. "scanline.mcfunction", "w")

local tile_vram = 0x8000
local map_vram = 0x9800

master:write(
    "tp @e[type=minecraft:armor_stand,name=inner_screen_paste1] @e[type=minecraft:armor_stand,name=inner_screen_paste,limit=1]\n")

-- TODO mark all generated files as being generated
-- TODO test if doing execute store is faster
-- TODO look at generate_sprites for example
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

execute if score 1_3 binary matches 0 if score 0_3 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run fill ~ ~ ~ ~159 ~ ~ minecraft:lime_concrete_powder
execute if score 1_3 binary matches 0 if score 0_3 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run fill ~ ~ ~ ~159 ~ ~ minecraft:lime_concrete
execute if score 1_3 binary matches 1 if score 0_3 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run fill ~ ~ ~ ~159 ~ ~ minecraft:green_concrete_powder
execute if score 1_3 binary matches 1 if score 0_3 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run fill ~ ~ ~ ~159 ~ ~ minecraft:green_concrete


scoreboard players set sprite_bg_priority ppu 1
function ppu:sprites

execute if score 0_2 binary matches 1 run function ppu:background

execute if score 65354 io <= 65348 io if score 65354 io matches 0..143 if score 65355 io matches 0..166 if score 5_2 binary matches 1 run function ppu:window

execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run data get entity @e[type=minecraft:armor_stand,name=inner_screen_paste,limit=1] Pos[0]

scoreboard players set sprite_bg_priority ppu 0
function ppu:sprites
]])
