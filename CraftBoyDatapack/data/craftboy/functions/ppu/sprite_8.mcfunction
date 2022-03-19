scoreboard players operation index craftboy = value_1 sort

scoreboard players add index craftboy 3
function craftboy:read/oam/main
scoreboard players operation in binary = transfer craftboy
function craftboy:util/binary_split4

execute if score 7_4 binary matches 0 if score sprite_bg_priority ppu matches 0 run function craftboy:ppu/sprite_draw
execute if score 7_4 binary matches 1 if score sprite_bg_priority ppu matches 1 run function craftboy:ppu/sprite_draw_behind