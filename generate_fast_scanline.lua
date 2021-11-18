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


scoreboard players operation tmp_y ppu = y ppu
scoreboard players operation tmp_y ppu /= 8 constants
scoreboard players operation tileY ppu = tmp_y ppu
scoreboard players operation tmp_y ppu *= 8 constants


scoreboard players operation y ppu -= tmp_y ppu


scoreboard players remove tileY ppu 31
scoreboard players operation tileY ppu *= -1 constants


scoreboard players operation tileX ppu = x ppu
scoreboard players operation tileX ppu /= 8 constants


scoreboard players operation in binary = 65344 io
function util:binary_split2


scoreboard players operation in binary = 65351 io
function util:binary_split3


execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run fill ~ ~ ~ ~160 ~ ~ minecraft:red_concrete


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
]])

-- execute unless block ~-256 ~ ~ minecraft:dirt if score 0_0 binary matches 0 if score 0_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~ ~ ~ green_concrete
-- execute unless block ~-256 ~ ~ minecraft:dirt if score 0_0 binary matches 0 if score 0_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~ ~ ~ green_concrete_powder
-- execute unless block ~-256 ~ ~ minecraft:dirt if score 0_0 binary matches 1 if score 0_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~ ~ ~ lime_concrete
-- execute unless block ~-256 ~ ~ minecraft:dirt if score 0_0 binary matches 1 if score 0_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~ ~ ~ lime_concrete_powder

-- execute unless block ~-255 ~ ~ minecraft:dirt if score 1_0 binary matches 0 if score 1_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~1 ~ ~ green_concrete
-- execute unless block ~-255 ~ ~ minecraft:dirt if score 1_0 binary matches 0 if score 1_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~1 ~ ~ green_concrete_powder
-- execute unless block ~-255 ~ ~ minecraft:dirt if score 1_0 binary matches 1 if score 1_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~1 ~ ~ lime_concrete
-- execute unless block ~-255 ~ ~ minecraft:dirt if score 1_0 binary matches 1 if score 1_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~1 ~ ~ lime_concrete_powder

-- execute unless block ~-254 ~ ~ minecraft:dirt if score 2_0 binary matches 0 if score 2_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~2 ~ ~ green_concrete
-- execute unless block ~-254 ~ ~ minecraft:dirt if score 2_0 binary matches 0 if score 2_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~2 ~ ~ green_concrete_powder
-- execute unless block ~-254 ~ ~ minecraft:dirt if score 2_0 binary matches 1 if score 2_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~2 ~ ~ lime_concrete
-- execute unless block ~-254 ~ ~ minecraft:dirt if score 2_0 binary matches 1 if score 2_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~2 ~ ~ lime_concrete_powder

-- execute unless block ~-253 ~ ~ minecraft:dirt if score 3_0 binary matches 0 if score 3_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~3 ~ ~ green_concrete
-- execute unless block ~-253 ~ ~ minecraft:dirt if score 3_0 binary matches 0 if score 3_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~3 ~ ~ green_concrete_powder
-- execute unless block ~-253 ~ ~ minecraft:dirt if score 3_0 binary matches 1 if score 3_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~3 ~ ~ lime_concrete
-- execute unless block ~-253 ~ ~ minecraft:dirt if score 3_0 binary matches 1 if score 3_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~3 ~ ~ lime_concrete_powder

-- execute unless block ~-252 ~ ~ minecraft:dirt if score 4_0 binary matches 0 if score 4_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~4 ~ ~ green_concrete
-- execute unless block ~-252 ~ ~ minecraft:dirt if score 4_0 binary matches 0 if score 4_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~4 ~ ~ green_concrete_powder
-- execute unless block ~-252 ~ ~ minecraft:dirt if score 4_0 binary matches 1 if score 4_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~4 ~ ~ lime_concrete
-- execute unless block ~-252 ~ ~ minecraft:dirt if score 4_0 binary matches 1 if score 4_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~4 ~ ~ lime_concrete_powder

-- execute unless block ~-251 ~ ~ minecraft:dirt if score 5_0 binary matches 0 if score 5_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~5 ~ ~ green_concrete
-- execute unless block ~-251 ~ ~ minecraft:dirt if score 5_0 binary matches 0 if score 5_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~5 ~ ~ green_concrete_powder
-- execute unless block ~-251 ~ ~ minecraft:dirt if score 5_0 binary matches 1 if score 5_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~5 ~ ~ lime_concrete
-- execute unless block ~-251 ~ ~ minecraft:dirt if score 5_0 binary matches 1 if score 5_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~5 ~ ~ lime_concrete_powder

-- execute unless block ~-250 ~ ~ minecraft:dirt if score 6_0 binary matches 0 if score 6_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~6 ~ ~ green_concrete
-- execute unless block ~-250 ~ ~ minecraft:dirt if score 6_0 binary matches 0 if score 6_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~6 ~ ~ green_concrete_powder
-- execute unless block ~-250 ~ ~ minecraft:dirt if score 6_0 binary matches 1 if score 6_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~6 ~ ~ lime_concrete
-- execute unless block ~-250 ~ ~ minecraft:dirt if score 6_0 binary matches 1 if score 6_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~6 ~ ~ lime_concrete_powder

-- execute unless block ~-249 ~ ~ minecraft:dirt if score 7_0 binary matches 0 if score 7_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~7 ~ ~ green_concrete
-- execute unless block ~-249 ~ ~ minecraft:dirt if score 7_0 binary matches 0 if score 7_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~7 ~ ~ green_concrete_powder
-- execute unless block ~-249 ~ ~ minecraft:dirt if score 7_0 binary matches 1 if score 7_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~7 ~ ~ lime_concrete
-- execute unless block ~-249 ~ ~ minecraft:dirt if score 7_0 binary matches 1 if score 7_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~7 ~ ~ lime_concrete_powder

-- execute unless block ~256 ~ ~ minecraft:dirt if score 0_0 binary matches 0 if score 0_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~ ~ ~ green_concrete
-- execute unless block ~256 ~ ~ minecraft:dirt if score 0_0 binary matches 0 if score 0_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~ ~ ~ green_concrete_powder
-- execute unless block ~256 ~ ~ minecraft:dirt if score 0_0 binary matches 1 if score 0_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~ ~ ~ lime_concrete
-- execute unless block ~256 ~ ~ minecraft:dirt if score 0_0 binary matches 1 if score 0_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~ ~ ~ lime_concrete_powder

-- execute unless block ~257 ~ ~ minecraft:dirt if score 1_0 binary matches 0 if score 1_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~1 ~ ~ green_concrete
-- execute unless block ~257 ~ ~ minecraft:dirt if score 1_0 binary matches 0 if score 1_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~1 ~ ~ green_concrete_powder
-- execute unless block ~257 ~ ~ minecraft:dirt if score 1_0 binary matches 1 if score 1_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~1 ~ ~ lime_concrete
-- execute unless block ~257 ~ ~ minecraft:dirt if score 1_0 binary matches 1 if score 1_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~1 ~ ~ lime_concrete_powder

-- execute unless block ~258 ~ ~ minecraft:dirt if score 2_0 binary matches 0 if score 2_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~2 ~ ~ green_concrete
-- execute unless block ~258 ~ ~ minecraft:dirt if score 2_0 binary matches 0 if score 2_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~2 ~ ~ green_concrete_powder
-- execute unless block ~258 ~ ~ minecraft:dirt if score 2_0 binary matches 1 if score 2_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~2 ~ ~ lime_concrete
-- execute unless block ~258 ~ ~ minecraft:dirt if score 2_0 binary matches 1 if score 2_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~2 ~ ~ lime_concrete_powder

-- execute unless block ~259 ~ ~ minecraft:dirt if score 3_0 binary matches 0 if score 3_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~3 ~ ~ green_concrete
-- execute unless block ~259 ~ ~ minecraft:dirt if score 3_0 binary matches 0 if score 3_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~3 ~ ~ green_concrete_powder
-- execute unless block ~259 ~ ~ minecraft:dirt if score 3_0 binary matches 1 if score 3_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~3 ~ ~ lime_concrete
-- execute unless block ~259 ~ ~ minecraft:dirt if score 3_0 binary matches 1 if score 3_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~3 ~ ~ lime_concrete_powder

-- execute unless block ~260 ~ ~ minecraft:dirt if score 4_0 binary matches 0 if score 4_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~4 ~ ~ green_concrete
-- execute unless block ~260 ~ ~ minecraft:dirt if score 4_0 binary matches 0 if score 4_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~4 ~ ~ green_concrete_powder
-- execute unless block ~260 ~ ~ minecraft:dirt if score 4_0 binary matches 1 if score 4_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~4 ~ ~ lime_concrete
-- execute unless block ~260 ~ ~ minecraft:dirt if score 4_0 binary matches 1 if score 4_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~4 ~ ~ lime_concrete_powder

-- execute unless block ~261 ~ ~ minecraft:dirt if score 5_0 binary matches 0 if score 5_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~5 ~ ~ green_concrete
-- execute unless block ~261 ~ ~ minecraft:dirt if score 5_0 binary matches 0 if score 5_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~5 ~ ~ green_concrete_powder
-- execute unless block ~261 ~ ~ minecraft:dirt if score 5_0 binary matches 1 if score 5_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~5 ~ ~ lime_concrete
-- execute unless block ~261 ~ ~ minecraft:dirt if score 5_0 binary matches 1 if score 5_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~5 ~ ~ lime_concrete_powder

-- execute unless block ~262 ~ ~ minecraft:dirt if score 6_0 binary matches 0 if score 6_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~6 ~ ~ green_concrete
-- execute unless block ~262 ~ ~ minecraft:dirt if score 6_0 binary matches 0 if score 6_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~6 ~ ~ green_concrete_powder
-- execute unless block ~262 ~ ~ minecraft:dirt if score 6_0 binary matches 1 if score 6_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~6 ~ ~ lime_concrete
-- execute unless block ~262 ~ ~ minecraft:dirt if score 6_0 binary matches 1 if score 6_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~6 ~ ~ lime_concrete_powder

-- execute unless block ~263 ~ ~ minecraft:dirt if score 7_0 binary matches 0 if score 7_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~7 ~ ~ green_concrete
-- execute unless block ~263 ~ ~ minecraft:dirt if score 7_0 binary matches 0 if score 7_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~7 ~ ~ green_concrete_powder
-- execute unless block ~263 ~ ~ minecraft:dirt if score 7_0 binary matches 1 if score 7_1 binary matches 0 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~7 ~ ~ lime_concrete
-- execute unless block ~263 ~ ~ minecraft:dirt if score 7_0 binary matches 1 if score 7_1 binary matches 1 at @e[type=minecraft:armor_stand,name=inner_screen_paste1] run setblock ~7 ~ ~ lime_concrete_powder
