local folder = "./CraftBoyDatapack/data/ppu/functions/"
local master = io.open(folder .. "sprite_row.mcfunction", "w")

master:write([[
scoreboard players add sprite_count ppu 1

# TODO bits in wrong order?
scoreboard players operation index craftboy = row ppu
function read:tile_vram_0_0
scoreboard players operation in binary = transfer craftboy
function util:binary_split0


scoreboard players add index craftboy 1
function read:tile_vram_0_0
scoreboard players operation in binary = transfer craftboy
function util:binary_split1
]])

for i = 0, 7 do
    master:write([[
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~]] ..
                     7 - i .. [[ ~ ~ minecraft:dirt if score ]] .. i ..
                     [[_1 binary matches 0 if score ]] .. i ..
                     [[_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 0 run setblock ~]] ..
                     7 - i .. [[ ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~]] ..
                     7 - i .. [[ ~ ~ minecraft:dirt if score ]] .. i ..
                     [[_1 binary matches 0 if score ]] .. i ..
                     [[_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 1 run setblock ~]] ..
                     7 - i .. [[ ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~]] ..
                     7 - i .. [[ ~ ~ minecraft:dirt if score ]] .. i ..
                     [[_1 binary matches 0 if score ]] .. i ..
                     [[_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 0 run setblock ~]] ..
                     7 - i .. [[ ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~]] ..
                     7 - i .. [[ ~ ~ minecraft:dirt if score ]] .. i ..
                     [[_1 binary matches 0 if score ]] .. i ..
                     [[_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 1 run setblock ~]] ..
                     7 - i .. [[ ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~]] ..
                     7 - i .. [[ ~ ~ minecraft:dirt if score ]] .. i ..
                     [[_1 binary matches 1 if score ]] .. i ..
                     [[_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 0 run setblock ~]] ..
                     7 - i .. [[ ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~]] ..
                     7 - i .. [[ ~ ~ minecraft:dirt if score ]] .. i ..
                     [[_1 binary matches 1 if score ]] .. i ..
                     [[_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 1 run setblock ~]] ..
                     7 - i .. [[ ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~]] ..
                     7 - i .. [[ ~ ~ minecraft:dirt if score ]] .. i ..
                     [[_1 binary matches 1 if score ]] .. i ..
                     [[_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 0 run setblock ~]] ..
                     7 - i .. [[ ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~]] ..
                     7 - i .. [[ ~ ~ minecraft:dirt if score ]] .. i ..
                     [[_1 binary matches 1 if score ]] .. i ..
                     [[_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 1 run setblock ~]] ..
                     7 - i .. [[ ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~]] ..
                     7 - i .. [[ ~ ~ minecraft:dirt if score ]] .. i ..
                     [[_1 binary matches 1 if score ]] .. i ..
                     [[_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 0 run setblock ~]] ..
                     7 - i .. [[ ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~]] ..
                     7 - i .. [[ ~ ~ minecraft:dirt if score ]] .. i ..
                     [[_1 binary matches 1 if score ]] .. i ..
                     [[_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 1 run setblock ~]] ..
                     7 - i .. [[ ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~]] ..
                     7 - i .. [[ ~ ~ minecraft:dirt if score ]] .. i ..
                     [[_1 binary matches 1 if score ]] .. i ..
                     [[_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 0 run setblock ~]] ..
                     7 - i .. [[ ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~]] ..
                     7 - i .. [[ ~ ~ minecraft:dirt if score ]] .. i ..
                     [[_1 binary matches 1 if score ]] .. i ..
                     [[_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 1 run setblock ~]] ..
                     7 - i .. [[ ~ ~ green_concrete


]])
end
