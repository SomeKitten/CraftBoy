data modify entity @s Pos[0] set value 0d
execute store result entity @s Pos[2] double 1 run scoreboard players get 65348 io

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
function craftboy:util/binary_split2


scoreboard players operation in binary = 65351 io
function craftboy:util/binary_split3

execute at @s run fill 0 ~ ~ 159 ~ ~ minecraft:red_concrete

execute if score 0_2 binary matches 1 run function craftboy:ppu/background

execute if score 5_2 binary matches 1 if score 65354 io <= 65348 io if score 65354 io matches 0..143 if score 65355 io matches 0..166 run function craftboy:ppu/window

data modify entity @s Pos[0] set value 0d

scoreboard players set sprite_bg_priority ppu 1
execute if score 1_2 binary matches 1 run function craftboy:ppu/sprites
scoreboard players set sprite_bg_priority ppu 0
execute if score 1_2 binary matches 1 run function craftboy:ppu/sprites

execute at @s if score 1_3 binary matches 0 if score 0_3 binary matches 0 at @s run fill 0 ~ ~ 159 ~ ~ minecraft:lime_concrete_powder replace minecraft:red_concrete
execute at @s if score 1_3 binary matches 0 if score 0_3 binary matches 1 at @s run fill 0 ~ ~ 159 ~ ~ minecraft:lime_concrete replace minecraft:red_concrete
execute at @s if score 1_3 binary matches 1 if score 0_3 binary matches 0 at @s run fill 0 ~ ~ 159 ~ ~ minecraft:green_concrete_powder replace minecraft:red_concrete
execute at @s if score 1_3 binary matches 1 if score 0_3 binary matches 1 at @s run fill 0 ~ ~ 159 ~ ~ minecraft:green_concrete replace minecraft:red_concrete
