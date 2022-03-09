scoreboard players operation index craftboy = value_3 sort

scoreboard players add index craftboy 3
function craftboy:read/oam/main
scoreboard players operation in binary = transfer craftboy
function craftboy:util/binary_split4

scoreboard players remove index craftboy 2
function craftboy:read/oam/main
scoreboard players operation tmp_x ppu = transfer craftboy

scoreboard players remove tmp_x ppu 8
execute store result entity @s Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players add index craftboy 1
function craftboy:read/oam/main

execute if score 2_2 binary matches 0 run function craftboy:ppu/get_sprite_row_normal
execute if score 2_2 binary matches 1 run function craftboy:ppu/get_sprite_row_tall

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function craftboy:util/binary_split3

execute if score 5_4 binary matches 0 if score 7_4 binary = sprite_bg_priority ppu at @s run function craftboy:ppu/sprite_row
execute if score 5_4 binary matches 1 if score 7_4 binary = sprite_bg_priority ppu at @s run function craftboy:ppu/sprite_row_flipped