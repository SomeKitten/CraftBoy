scoreboard players add sprite_count ppu 1

# TODO bits in wrong order?
scoreboard players operation index craftboy = row ppu
function craftboy:read/tile_vram_0_0
scoreboard players operation in binary = transfer craftboy
function craftboy:util/binary_split0


scoreboard players add index craftboy 1
function craftboy:read/tile_vram_0_0
scoreboard players operation in binary = transfer craftboy
function craftboy:util/binary_split1
execute unless block ~0 ~ ~ air if score 0_1 binary matches 0 if score 0_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 0 run setblock ~0 ~ ~ lime_concrete_powder
execute unless block ~0 ~ ~ air if score 0_1 binary matches 0 if score 0_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 1 run setblock ~0 ~ ~ lime_concrete
execute unless block ~0 ~ ~ air if score 0_1 binary matches 0 if score 0_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 0 run setblock ~0 ~ ~ green_concrete_powder
execute unless block ~0 ~ ~ air if score 0_1 binary matches 0 if score 0_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 1 run setblock ~0 ~ ~ green_concrete

execute unless block ~0 ~ ~ air if score 0_1 binary matches 1 if score 0_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 0 run setblock ~0 ~ ~ lime_concrete_powder
execute unless block ~0 ~ ~ air if score 0_1 binary matches 1 if score 0_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 1 run setblock ~0 ~ ~ lime_concrete
execute unless block ~0 ~ ~ air if score 0_1 binary matches 1 if score 0_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 0 run setblock ~0 ~ ~ green_concrete_powder
execute unless block ~0 ~ ~ air if score 0_1 binary matches 1 if score 0_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 1 run setblock ~0 ~ ~ green_concrete

execute unless block ~0 ~ ~ air if score 0_1 binary matches 1 if score 0_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 0 run setblock ~0 ~ ~ lime_concrete_powder
execute unless block ~0 ~ ~ air if score 0_1 binary matches 1 if score 0_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 1 run setblock ~0 ~ ~ lime_concrete
execute unless block ~0 ~ ~ air if score 0_1 binary matches 1 if score 0_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 0 run setblock ~0 ~ ~ green_concrete_powder
execute unless block ~0 ~ ~ air if score 0_1 binary matches 1 if score 0_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 1 run setblock ~0 ~ ~ green_concrete


execute unless block ~1 ~ ~ air if score 1_1 binary matches 0 if score 1_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 0 run setblock ~1 ~ ~ lime_concrete_powder
execute unless block ~1 ~ ~ air if score 1_1 binary matches 0 if score 1_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 1 run setblock ~1 ~ ~ lime_concrete
execute unless block ~1 ~ ~ air if score 1_1 binary matches 0 if score 1_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 0 run setblock ~1 ~ ~ green_concrete_powder
execute unless block ~1 ~ ~ air if score 1_1 binary matches 0 if score 1_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 1 run setblock ~1 ~ ~ green_concrete

execute unless block ~1 ~ ~ air if score 1_1 binary matches 1 if score 1_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 0 run setblock ~1 ~ ~ lime_concrete_powder
execute unless block ~1 ~ ~ air if score 1_1 binary matches 1 if score 1_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 1 run setblock ~1 ~ ~ lime_concrete
execute unless block ~1 ~ ~ air if score 1_1 binary matches 1 if score 1_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 0 run setblock ~1 ~ ~ green_concrete_powder
execute unless block ~1 ~ ~ air if score 1_1 binary matches 1 if score 1_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 1 run setblock ~1 ~ ~ green_concrete

execute unless block ~1 ~ ~ air if score 1_1 binary matches 1 if score 1_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 0 run setblock ~1 ~ ~ lime_concrete_powder
execute unless block ~1 ~ ~ air if score 1_1 binary matches 1 if score 1_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 1 run setblock ~1 ~ ~ lime_concrete
execute unless block ~1 ~ ~ air if score 1_1 binary matches 1 if score 1_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 0 run setblock ~1 ~ ~ green_concrete_powder
execute unless block ~1 ~ ~ air if score 1_1 binary matches 1 if score 1_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 1 run setblock ~1 ~ ~ green_concrete


execute unless block ~2 ~ ~ air if score 2_1 binary matches 0 if score 2_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 0 run setblock ~2 ~ ~ lime_concrete_powder
execute unless block ~2 ~ ~ air if score 2_1 binary matches 0 if score 2_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 1 run setblock ~2 ~ ~ lime_concrete
execute unless block ~2 ~ ~ air if score 2_1 binary matches 0 if score 2_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 0 run setblock ~2 ~ ~ green_concrete_powder
execute unless block ~2 ~ ~ air if score 2_1 binary matches 0 if score 2_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 1 run setblock ~2 ~ ~ green_concrete

execute unless block ~2 ~ ~ air if score 2_1 binary matches 1 if score 2_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 0 run setblock ~2 ~ ~ lime_concrete_powder
execute unless block ~2 ~ ~ air if score 2_1 binary matches 1 if score 2_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 1 run setblock ~2 ~ ~ lime_concrete
execute unless block ~2 ~ ~ air if score 2_1 binary matches 1 if score 2_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 0 run setblock ~2 ~ ~ green_concrete_powder
execute unless block ~2 ~ ~ air if score 2_1 binary matches 1 if score 2_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 1 run setblock ~2 ~ ~ green_concrete

execute unless block ~2 ~ ~ air if score 2_1 binary matches 1 if score 2_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 0 run setblock ~2 ~ ~ lime_concrete_powder
execute unless block ~2 ~ ~ air if score 2_1 binary matches 1 if score 2_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 1 run setblock ~2 ~ ~ lime_concrete
execute unless block ~2 ~ ~ air if score 2_1 binary matches 1 if score 2_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 0 run setblock ~2 ~ ~ green_concrete_powder
execute unless block ~2 ~ ~ air if score 2_1 binary matches 1 if score 2_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 1 run setblock ~2 ~ ~ green_concrete


execute unless block ~3 ~ ~ air if score 3_1 binary matches 0 if score 3_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 0 run setblock ~3 ~ ~ lime_concrete_powder
execute unless block ~3 ~ ~ air if score 3_1 binary matches 0 if score 3_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 1 run setblock ~3 ~ ~ lime_concrete
execute unless block ~3 ~ ~ air if score 3_1 binary matches 0 if score 3_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 0 run setblock ~3 ~ ~ green_concrete_powder
execute unless block ~3 ~ ~ air if score 3_1 binary matches 0 if score 3_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 1 run setblock ~3 ~ ~ green_concrete

execute unless block ~3 ~ ~ air if score 3_1 binary matches 1 if score 3_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 0 run setblock ~3 ~ ~ lime_concrete_powder
execute unless block ~3 ~ ~ air if score 3_1 binary matches 1 if score 3_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 1 run setblock ~3 ~ ~ lime_concrete
execute unless block ~3 ~ ~ air if score 3_1 binary matches 1 if score 3_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 0 run setblock ~3 ~ ~ green_concrete_powder
execute unless block ~3 ~ ~ air if score 3_1 binary matches 1 if score 3_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 1 run setblock ~3 ~ ~ green_concrete

execute unless block ~3 ~ ~ air if score 3_1 binary matches 1 if score 3_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 0 run setblock ~3 ~ ~ lime_concrete_powder
execute unless block ~3 ~ ~ air if score 3_1 binary matches 1 if score 3_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 1 run setblock ~3 ~ ~ lime_concrete
execute unless block ~3 ~ ~ air if score 3_1 binary matches 1 if score 3_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 0 run setblock ~3 ~ ~ green_concrete_powder
execute unless block ~3 ~ ~ air if score 3_1 binary matches 1 if score 3_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 1 run setblock ~3 ~ ~ green_concrete


execute unless block ~4 ~ ~ air if score 4_1 binary matches 0 if score 4_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 0 run setblock ~4 ~ ~ lime_concrete_powder
execute unless block ~4 ~ ~ air if score 4_1 binary matches 0 if score 4_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 1 run setblock ~4 ~ ~ lime_concrete
execute unless block ~4 ~ ~ air if score 4_1 binary matches 0 if score 4_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 0 run setblock ~4 ~ ~ green_concrete_powder
execute unless block ~4 ~ ~ air if score 4_1 binary matches 0 if score 4_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 1 run setblock ~4 ~ ~ green_concrete

execute unless block ~4 ~ ~ air if score 4_1 binary matches 1 if score 4_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 0 run setblock ~4 ~ ~ lime_concrete_powder
execute unless block ~4 ~ ~ air if score 4_1 binary matches 1 if score 4_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 1 run setblock ~4 ~ ~ lime_concrete
execute unless block ~4 ~ ~ air if score 4_1 binary matches 1 if score 4_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 0 run setblock ~4 ~ ~ green_concrete_powder
execute unless block ~4 ~ ~ air if score 4_1 binary matches 1 if score 4_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 1 run setblock ~4 ~ ~ green_concrete

execute unless block ~4 ~ ~ air if score 4_1 binary matches 1 if score 4_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 0 run setblock ~4 ~ ~ lime_concrete_powder
execute unless block ~4 ~ ~ air if score 4_1 binary matches 1 if score 4_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 1 run setblock ~4 ~ ~ lime_concrete
execute unless block ~4 ~ ~ air if score 4_1 binary matches 1 if score 4_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 0 run setblock ~4 ~ ~ green_concrete_powder
execute unless block ~4 ~ ~ air if score 4_1 binary matches 1 if score 4_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 1 run setblock ~4 ~ ~ green_concrete


execute unless block ~5 ~ ~ air if score 5_1 binary matches 0 if score 5_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 0 run setblock ~5 ~ ~ lime_concrete_powder
execute unless block ~5 ~ ~ air if score 5_1 binary matches 0 if score 5_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 1 run setblock ~5 ~ ~ lime_concrete
execute unless block ~5 ~ ~ air if score 5_1 binary matches 0 if score 5_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 0 run setblock ~5 ~ ~ green_concrete_powder
execute unless block ~5 ~ ~ air if score 5_1 binary matches 0 if score 5_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 1 run setblock ~5 ~ ~ green_concrete

execute unless block ~5 ~ ~ air if score 5_1 binary matches 1 if score 5_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 0 run setblock ~5 ~ ~ lime_concrete_powder
execute unless block ~5 ~ ~ air if score 5_1 binary matches 1 if score 5_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 1 run setblock ~5 ~ ~ lime_concrete
execute unless block ~5 ~ ~ air if score 5_1 binary matches 1 if score 5_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 0 run setblock ~5 ~ ~ green_concrete_powder
execute unless block ~5 ~ ~ air if score 5_1 binary matches 1 if score 5_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 1 run setblock ~5 ~ ~ green_concrete

execute unless block ~5 ~ ~ air if score 5_1 binary matches 1 if score 5_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 0 run setblock ~5 ~ ~ lime_concrete_powder
execute unless block ~5 ~ ~ air if score 5_1 binary matches 1 if score 5_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 1 run setblock ~5 ~ ~ lime_concrete
execute unless block ~5 ~ ~ air if score 5_1 binary matches 1 if score 5_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 0 run setblock ~5 ~ ~ green_concrete_powder
execute unless block ~5 ~ ~ air if score 5_1 binary matches 1 if score 5_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 1 run setblock ~5 ~ ~ green_concrete


execute unless block ~6 ~ ~ air if score 6_1 binary matches 0 if score 6_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 0 run setblock ~6 ~ ~ lime_concrete_powder
execute unless block ~6 ~ ~ air if score 6_1 binary matches 0 if score 6_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 1 run setblock ~6 ~ ~ lime_concrete
execute unless block ~6 ~ ~ air if score 6_1 binary matches 0 if score 6_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 0 run setblock ~6 ~ ~ green_concrete_powder
execute unless block ~6 ~ ~ air if score 6_1 binary matches 0 if score 6_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 1 run setblock ~6 ~ ~ green_concrete

execute unless block ~6 ~ ~ air if score 6_1 binary matches 1 if score 6_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 0 run setblock ~6 ~ ~ lime_concrete_powder
execute unless block ~6 ~ ~ air if score 6_1 binary matches 1 if score 6_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 1 run setblock ~6 ~ ~ lime_concrete
execute unless block ~6 ~ ~ air if score 6_1 binary matches 1 if score 6_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 0 run setblock ~6 ~ ~ green_concrete_powder
execute unless block ~6 ~ ~ air if score 6_1 binary matches 1 if score 6_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 1 run setblock ~6 ~ ~ green_concrete

execute unless block ~6 ~ ~ air if score 6_1 binary matches 1 if score 6_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 0 run setblock ~6 ~ ~ lime_concrete_powder
execute unless block ~6 ~ ~ air if score 6_1 binary matches 1 if score 6_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 1 run setblock ~6 ~ ~ lime_concrete
execute unless block ~6 ~ ~ air if score 6_1 binary matches 1 if score 6_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 0 run setblock ~6 ~ ~ green_concrete_powder
execute unless block ~6 ~ ~ air if score 6_1 binary matches 1 if score 6_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 1 run setblock ~6 ~ ~ green_concrete


execute unless block ~7 ~ ~ air if score 7_1 binary matches 0 if score 7_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 0 run setblock ~7 ~ ~ lime_concrete_powder
execute unless block ~7 ~ ~ air if score 7_1 binary matches 0 if score 7_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 1 run setblock ~7 ~ ~ lime_concrete
execute unless block ~7 ~ ~ air if score 7_1 binary matches 0 if score 7_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 0 run setblock ~7 ~ ~ green_concrete_powder
execute unless block ~7 ~ ~ air if score 7_1 binary matches 0 if score 7_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 1 run setblock ~7 ~ ~ green_concrete

execute unless block ~7 ~ ~ air if score 7_1 binary matches 1 if score 7_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 0 run setblock ~7 ~ ~ lime_concrete_powder
execute unless block ~7 ~ ~ air if score 7_1 binary matches 1 if score 7_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 1 run setblock ~7 ~ ~ lime_concrete
execute unless block ~7 ~ ~ air if score 7_1 binary matches 1 if score 7_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 0 run setblock ~7 ~ ~ green_concrete_powder
execute unless block ~7 ~ ~ air if score 7_1 binary matches 1 if score 7_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 1 run setblock ~7 ~ ~ green_concrete

execute unless block ~7 ~ ~ air if score 7_1 binary matches 1 if score 7_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 0 run setblock ~7 ~ ~ lime_concrete_powder
execute unless block ~7 ~ ~ air if score 7_1 binary matches 1 if score 7_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 1 run setblock ~7 ~ ~ lime_concrete
execute unless block ~7 ~ ~ air if score 7_1 binary matches 1 if score 7_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 0 run setblock ~7 ~ ~ green_concrete_powder
execute unless block ~7 ~ ~ air if score 7_1 binary matches 1 if score 7_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 1 run setblock ~7 ~ ~ green_concrete


