scoreboard players operation map_addr ppu = tileY ppu
scoreboard players operation map_addr ppu *= 32 constants
scoreboard players operation map_addr ppu += tileX ppu
execute if score 3_2 binary matches 0 run scoreboard players add map_addr ppu 38912
execute if score 3_2 binary matches 1 run scoreboard players add map_addr ppu 39936
execute if score 3_2 binary matches 1 run scoreboard players operation LY undefined = 65348 io
execute if score 3_2 binary matches 1 run scoreboard players operation MAP undefined = map_addr ppu


# TODO : DEBUG
# scoreboard players set map_addr ppu 38912
# scoreboard players set tileY ppu 0
# scoreboard players set y ppu 0


scoreboard players operation index craftboy = map_addr ppu
function read:tile_map_vram_0_0
scoreboard players operation tileAddr ppu = transfer craftboy


scoreboard players operation tileAddr ppu *= 16 constants


scoreboard players operation row ppu = y ppu
scoreboard players operation row ppu *= -2 constants
scoreboard players add row ppu 14
scoreboard players operation row ppu += tileAddr ppu

execute if score 4_2 binary matches 1 run scoreboard players add row ppu 32768
execute if score 4_2 binary matches 0 run scoreboard players add row ppu 36864
execute if score 4_2 binary matches 0 if score row ppu matches 38912.. run scoreboard players remove row ppu 4096


# TODO bits in wrong order?
scoreboard players operation index craftboy = row ppu
function read:tile_vram_0_0
scoreboard players operation in binary = transfer craftboy
function util:binary_split0


scoreboard players add index craftboy 1
function read:tile_vram_0_0
scoreboard players operation in binary = transfer craftboy
function util:binary_split1
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~7 ~ ~ minecraft:dirt if score 0_1 binary matches 0 if score 0_0 binary matches 0 if score 1_3 binary matches 0 if score 0_3 binary matches 0 run setblock ~7 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~7 ~ ~ minecraft:dirt if score 0_1 binary matches 0 if score 0_0 binary matches 0 if score 1_3 binary matches 0 if score 0_3 binary matches 1 run setblock ~7 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~7 ~ ~ minecraft:dirt if score 0_1 binary matches 0 if score 0_0 binary matches 0 if score 1_3 binary matches 1 if score 0_3 binary matches 0 run setblock ~7 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~7 ~ ~ minecraft:dirt if score 0_1 binary matches 0 if score 0_0 binary matches 0 if score 1_3 binary matches 1 if score 0_3 binary matches 1 run setblock ~7 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~7 ~ ~ minecraft:dirt if score 0_1 binary matches 0 if score 0_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 0 run setblock ~7 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~7 ~ ~ minecraft:dirt if score 0_1 binary matches 0 if score 0_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 1 run setblock ~7 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~7 ~ ~ minecraft:dirt if score 0_1 binary matches 0 if score 0_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 0 run setblock ~7 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~7 ~ ~ minecraft:dirt if score 0_1 binary matches 0 if score 0_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 1 run setblock ~7 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~7 ~ ~ minecraft:dirt if score 0_1 binary matches 1 if score 0_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 0 run setblock ~7 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~7 ~ ~ minecraft:dirt if score 0_1 binary matches 1 if score 0_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 1 run setblock ~7 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~7 ~ ~ minecraft:dirt if score 0_1 binary matches 1 if score 0_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 0 run setblock ~7 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~7 ~ ~ minecraft:dirt if score 0_1 binary matches 1 if score 0_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 1 run setblock ~7 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~7 ~ ~ minecraft:dirt if score 0_1 binary matches 1 if score 0_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 0 run setblock ~7 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~7 ~ ~ minecraft:dirt if score 0_1 binary matches 1 if score 0_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 1 run setblock ~7 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~7 ~ ~ minecraft:dirt if score 0_1 binary matches 1 if score 0_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 0 run setblock ~7 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~7 ~ ~ minecraft:dirt if score 0_1 binary matches 1 if score 0_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 1 run setblock ~7 ~ ~ green_concrete


execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~6 ~ ~ minecraft:dirt if score 1_1 binary matches 0 if score 1_0 binary matches 0 if score 1_3 binary matches 0 if score 0_3 binary matches 0 run setblock ~6 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~6 ~ ~ minecraft:dirt if score 1_1 binary matches 0 if score 1_0 binary matches 0 if score 1_3 binary matches 0 if score 0_3 binary matches 1 run setblock ~6 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~6 ~ ~ minecraft:dirt if score 1_1 binary matches 0 if score 1_0 binary matches 0 if score 1_3 binary matches 1 if score 0_3 binary matches 0 run setblock ~6 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~6 ~ ~ minecraft:dirt if score 1_1 binary matches 0 if score 1_0 binary matches 0 if score 1_3 binary matches 1 if score 0_3 binary matches 1 run setblock ~6 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~6 ~ ~ minecraft:dirt if score 1_1 binary matches 0 if score 1_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 0 run setblock ~6 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~6 ~ ~ minecraft:dirt if score 1_1 binary matches 0 if score 1_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 1 run setblock ~6 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~6 ~ ~ minecraft:dirt if score 1_1 binary matches 0 if score 1_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 0 run setblock ~6 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~6 ~ ~ minecraft:dirt if score 1_1 binary matches 0 if score 1_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 1 run setblock ~6 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~6 ~ ~ minecraft:dirt if score 1_1 binary matches 1 if score 1_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 0 run setblock ~6 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~6 ~ ~ minecraft:dirt if score 1_1 binary matches 1 if score 1_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 1 run setblock ~6 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~6 ~ ~ minecraft:dirt if score 1_1 binary matches 1 if score 1_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 0 run setblock ~6 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~6 ~ ~ minecraft:dirt if score 1_1 binary matches 1 if score 1_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 1 run setblock ~6 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~6 ~ ~ minecraft:dirt if score 1_1 binary matches 1 if score 1_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 0 run setblock ~6 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~6 ~ ~ minecraft:dirt if score 1_1 binary matches 1 if score 1_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 1 run setblock ~6 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~6 ~ ~ minecraft:dirt if score 1_1 binary matches 1 if score 1_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 0 run setblock ~6 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~6 ~ ~ minecraft:dirt if score 1_1 binary matches 1 if score 1_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 1 run setblock ~6 ~ ~ green_concrete


execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~5 ~ ~ minecraft:dirt if score 2_1 binary matches 0 if score 2_0 binary matches 0 if score 1_3 binary matches 0 if score 0_3 binary matches 0 run setblock ~5 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~5 ~ ~ minecraft:dirt if score 2_1 binary matches 0 if score 2_0 binary matches 0 if score 1_3 binary matches 0 if score 0_3 binary matches 1 run setblock ~5 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~5 ~ ~ minecraft:dirt if score 2_1 binary matches 0 if score 2_0 binary matches 0 if score 1_3 binary matches 1 if score 0_3 binary matches 0 run setblock ~5 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~5 ~ ~ minecraft:dirt if score 2_1 binary matches 0 if score 2_0 binary matches 0 if score 1_3 binary matches 1 if score 0_3 binary matches 1 run setblock ~5 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~5 ~ ~ minecraft:dirt if score 2_1 binary matches 0 if score 2_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 0 run setblock ~5 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~5 ~ ~ minecraft:dirt if score 2_1 binary matches 0 if score 2_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 1 run setblock ~5 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~5 ~ ~ minecraft:dirt if score 2_1 binary matches 0 if score 2_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 0 run setblock ~5 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~5 ~ ~ minecraft:dirt if score 2_1 binary matches 0 if score 2_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 1 run setblock ~5 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~5 ~ ~ minecraft:dirt if score 2_1 binary matches 1 if score 2_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 0 run setblock ~5 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~5 ~ ~ minecraft:dirt if score 2_1 binary matches 1 if score 2_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 1 run setblock ~5 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~5 ~ ~ minecraft:dirt if score 2_1 binary matches 1 if score 2_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 0 run setblock ~5 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~5 ~ ~ minecraft:dirt if score 2_1 binary matches 1 if score 2_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 1 run setblock ~5 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~5 ~ ~ minecraft:dirt if score 2_1 binary matches 1 if score 2_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 0 run setblock ~5 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~5 ~ ~ minecraft:dirt if score 2_1 binary matches 1 if score 2_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 1 run setblock ~5 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~5 ~ ~ minecraft:dirt if score 2_1 binary matches 1 if score 2_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 0 run setblock ~5 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~5 ~ ~ minecraft:dirt if score 2_1 binary matches 1 if score 2_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 1 run setblock ~5 ~ ~ green_concrete


execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~4 ~ ~ minecraft:dirt if score 3_1 binary matches 0 if score 3_0 binary matches 0 if score 1_3 binary matches 0 if score 0_3 binary matches 0 run setblock ~4 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~4 ~ ~ minecraft:dirt if score 3_1 binary matches 0 if score 3_0 binary matches 0 if score 1_3 binary matches 0 if score 0_3 binary matches 1 run setblock ~4 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~4 ~ ~ minecraft:dirt if score 3_1 binary matches 0 if score 3_0 binary matches 0 if score 1_3 binary matches 1 if score 0_3 binary matches 0 run setblock ~4 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~4 ~ ~ minecraft:dirt if score 3_1 binary matches 0 if score 3_0 binary matches 0 if score 1_3 binary matches 1 if score 0_3 binary matches 1 run setblock ~4 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~4 ~ ~ minecraft:dirt if score 3_1 binary matches 0 if score 3_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 0 run setblock ~4 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~4 ~ ~ minecraft:dirt if score 3_1 binary matches 0 if score 3_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 1 run setblock ~4 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~4 ~ ~ minecraft:dirt if score 3_1 binary matches 0 if score 3_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 0 run setblock ~4 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~4 ~ ~ minecraft:dirt if score 3_1 binary matches 0 if score 3_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 1 run setblock ~4 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~4 ~ ~ minecraft:dirt if score 3_1 binary matches 1 if score 3_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 0 run setblock ~4 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~4 ~ ~ minecraft:dirt if score 3_1 binary matches 1 if score 3_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 1 run setblock ~4 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~4 ~ ~ minecraft:dirt if score 3_1 binary matches 1 if score 3_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 0 run setblock ~4 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~4 ~ ~ minecraft:dirt if score 3_1 binary matches 1 if score 3_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 1 run setblock ~4 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~4 ~ ~ minecraft:dirt if score 3_1 binary matches 1 if score 3_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 0 run setblock ~4 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~4 ~ ~ minecraft:dirt if score 3_1 binary matches 1 if score 3_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 1 run setblock ~4 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~4 ~ ~ minecraft:dirt if score 3_1 binary matches 1 if score 3_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 0 run setblock ~4 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~4 ~ ~ minecraft:dirt if score 3_1 binary matches 1 if score 3_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 1 run setblock ~4 ~ ~ green_concrete


execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~3 ~ ~ minecraft:dirt if score 4_1 binary matches 0 if score 4_0 binary matches 0 if score 1_3 binary matches 0 if score 0_3 binary matches 0 run setblock ~3 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~3 ~ ~ minecraft:dirt if score 4_1 binary matches 0 if score 4_0 binary matches 0 if score 1_3 binary matches 0 if score 0_3 binary matches 1 run setblock ~3 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~3 ~ ~ minecraft:dirt if score 4_1 binary matches 0 if score 4_0 binary matches 0 if score 1_3 binary matches 1 if score 0_3 binary matches 0 run setblock ~3 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~3 ~ ~ minecraft:dirt if score 4_1 binary matches 0 if score 4_0 binary matches 0 if score 1_3 binary matches 1 if score 0_3 binary matches 1 run setblock ~3 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~3 ~ ~ minecraft:dirt if score 4_1 binary matches 0 if score 4_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 0 run setblock ~3 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~3 ~ ~ minecraft:dirt if score 4_1 binary matches 0 if score 4_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 1 run setblock ~3 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~3 ~ ~ minecraft:dirt if score 4_1 binary matches 0 if score 4_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 0 run setblock ~3 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~3 ~ ~ minecraft:dirt if score 4_1 binary matches 0 if score 4_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 1 run setblock ~3 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~3 ~ ~ minecraft:dirt if score 4_1 binary matches 1 if score 4_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 0 run setblock ~3 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~3 ~ ~ minecraft:dirt if score 4_1 binary matches 1 if score 4_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 1 run setblock ~3 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~3 ~ ~ minecraft:dirt if score 4_1 binary matches 1 if score 4_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 0 run setblock ~3 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~3 ~ ~ minecraft:dirt if score 4_1 binary matches 1 if score 4_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 1 run setblock ~3 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~3 ~ ~ minecraft:dirt if score 4_1 binary matches 1 if score 4_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 0 run setblock ~3 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~3 ~ ~ minecraft:dirt if score 4_1 binary matches 1 if score 4_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 1 run setblock ~3 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~3 ~ ~ minecraft:dirt if score 4_1 binary matches 1 if score 4_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 0 run setblock ~3 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~3 ~ ~ minecraft:dirt if score 4_1 binary matches 1 if score 4_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 1 run setblock ~3 ~ ~ green_concrete


execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~2 ~ ~ minecraft:dirt if score 5_1 binary matches 0 if score 5_0 binary matches 0 if score 1_3 binary matches 0 if score 0_3 binary matches 0 run setblock ~2 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~2 ~ ~ minecraft:dirt if score 5_1 binary matches 0 if score 5_0 binary matches 0 if score 1_3 binary matches 0 if score 0_3 binary matches 1 run setblock ~2 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~2 ~ ~ minecraft:dirt if score 5_1 binary matches 0 if score 5_0 binary matches 0 if score 1_3 binary matches 1 if score 0_3 binary matches 0 run setblock ~2 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~2 ~ ~ minecraft:dirt if score 5_1 binary matches 0 if score 5_0 binary matches 0 if score 1_3 binary matches 1 if score 0_3 binary matches 1 run setblock ~2 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~2 ~ ~ minecraft:dirt if score 5_1 binary matches 0 if score 5_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 0 run setblock ~2 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~2 ~ ~ minecraft:dirt if score 5_1 binary matches 0 if score 5_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 1 run setblock ~2 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~2 ~ ~ minecraft:dirt if score 5_1 binary matches 0 if score 5_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 0 run setblock ~2 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~2 ~ ~ minecraft:dirt if score 5_1 binary matches 0 if score 5_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 1 run setblock ~2 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~2 ~ ~ minecraft:dirt if score 5_1 binary matches 1 if score 5_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 0 run setblock ~2 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~2 ~ ~ minecraft:dirt if score 5_1 binary matches 1 if score 5_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 1 run setblock ~2 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~2 ~ ~ minecraft:dirt if score 5_1 binary matches 1 if score 5_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 0 run setblock ~2 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~2 ~ ~ minecraft:dirt if score 5_1 binary matches 1 if score 5_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 1 run setblock ~2 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~2 ~ ~ minecraft:dirt if score 5_1 binary matches 1 if score 5_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 0 run setblock ~2 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~2 ~ ~ minecraft:dirt if score 5_1 binary matches 1 if score 5_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 1 run setblock ~2 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~2 ~ ~ minecraft:dirt if score 5_1 binary matches 1 if score 5_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 0 run setblock ~2 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~2 ~ ~ minecraft:dirt if score 5_1 binary matches 1 if score 5_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 1 run setblock ~2 ~ ~ green_concrete


execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~1 ~ ~ minecraft:dirt if score 6_1 binary matches 0 if score 6_0 binary matches 0 if score 1_3 binary matches 0 if score 0_3 binary matches 0 run setblock ~1 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~1 ~ ~ minecraft:dirt if score 6_1 binary matches 0 if score 6_0 binary matches 0 if score 1_3 binary matches 0 if score 0_3 binary matches 1 run setblock ~1 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~1 ~ ~ minecraft:dirt if score 6_1 binary matches 0 if score 6_0 binary matches 0 if score 1_3 binary matches 1 if score 0_3 binary matches 0 run setblock ~1 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~1 ~ ~ minecraft:dirt if score 6_1 binary matches 0 if score 6_0 binary matches 0 if score 1_3 binary matches 1 if score 0_3 binary matches 1 run setblock ~1 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~1 ~ ~ minecraft:dirt if score 6_1 binary matches 0 if score 6_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 0 run setblock ~1 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~1 ~ ~ minecraft:dirt if score 6_1 binary matches 0 if score 6_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 1 run setblock ~1 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~1 ~ ~ minecraft:dirt if score 6_1 binary matches 0 if score 6_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 0 run setblock ~1 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~1 ~ ~ minecraft:dirt if score 6_1 binary matches 0 if score 6_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 1 run setblock ~1 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~1 ~ ~ minecraft:dirt if score 6_1 binary matches 1 if score 6_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 0 run setblock ~1 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~1 ~ ~ minecraft:dirt if score 6_1 binary matches 1 if score 6_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 1 run setblock ~1 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~1 ~ ~ minecraft:dirt if score 6_1 binary matches 1 if score 6_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 0 run setblock ~1 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~1 ~ ~ minecraft:dirt if score 6_1 binary matches 1 if score 6_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 1 run setblock ~1 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~1 ~ ~ minecraft:dirt if score 6_1 binary matches 1 if score 6_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 0 run setblock ~1 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~1 ~ ~ minecraft:dirt if score 6_1 binary matches 1 if score 6_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 1 run setblock ~1 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~1 ~ ~ minecraft:dirt if score 6_1 binary matches 1 if score 6_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 0 run setblock ~1 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~1 ~ ~ minecraft:dirt if score 6_1 binary matches 1 if score 6_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 1 run setblock ~1 ~ ~ green_concrete


execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~0 ~ ~ minecraft:dirt if score 7_1 binary matches 0 if score 7_0 binary matches 0 if score 1_3 binary matches 0 if score 0_3 binary matches 0 run setblock ~0 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~0 ~ ~ minecraft:dirt if score 7_1 binary matches 0 if score 7_0 binary matches 0 if score 1_3 binary matches 0 if score 0_3 binary matches 1 run setblock ~0 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~0 ~ ~ minecraft:dirt if score 7_1 binary matches 0 if score 7_0 binary matches 0 if score 1_3 binary matches 1 if score 0_3 binary matches 0 run setblock ~0 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~0 ~ ~ minecraft:dirt if score 7_1 binary matches 0 if score 7_0 binary matches 0 if score 1_3 binary matches 1 if score 0_3 binary matches 1 run setblock ~0 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~0 ~ ~ minecraft:dirt if score 7_1 binary matches 0 if score 7_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 0 run setblock ~0 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~0 ~ ~ minecraft:dirt if score 7_1 binary matches 0 if score 7_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 1 run setblock ~0 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~0 ~ ~ minecraft:dirt if score 7_1 binary matches 0 if score 7_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 0 run setblock ~0 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~0 ~ ~ minecraft:dirt if score 7_1 binary matches 0 if score 7_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 1 run setblock ~0 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~0 ~ ~ minecraft:dirt if score 7_1 binary matches 1 if score 7_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 0 run setblock ~0 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~0 ~ ~ minecraft:dirt if score 7_1 binary matches 1 if score 7_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 1 run setblock ~0 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~0 ~ ~ minecraft:dirt if score 7_1 binary matches 1 if score 7_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 0 run setblock ~0 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~0 ~ ~ minecraft:dirt if score 7_1 binary matches 1 if score 7_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 1 run setblock ~0 ~ ~ green_concrete

execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~0 ~ ~ minecraft:dirt if score 7_1 binary matches 1 if score 7_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 0 run setblock ~0 ~ ~ lime_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~0 ~ ~ minecraft:dirt if score 7_1 binary matches 1 if score 7_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 1 run setblock ~0 ~ ~ lime_concrete
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~0 ~ ~ minecraft:dirt if score 7_1 binary matches 1 if score 7_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 0 run setblock ~0 ~ ~ green_concrete_powder
execute at @e[type=minecraft:armor_stand,name=inner_screen_paste1] unless block ~0 ~ ~ minecraft:dirt if score 7_1 binary matches 1 if score 7_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 1 run setblock ~0 ~ ~ green_concrete


execute as @e[type=minecraft:armor_stand,name=inner_screen_paste1] at @s run tp ~8 ~ ~


scoreboard players add tileX ppu 1
execute if score tileX ppu matches 32.. run scoreboard players remove tileX ppu 32
