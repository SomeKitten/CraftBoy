scoreboard players operation index craftboy = value_9 sort

scoreboard players add index craftboy 3
function craftboy:read/oam/main
scoreboard players operation in binary = transfer craftboy
function craftboy:util/binary_split4

execute if score 7_4 binary = sprite_bg_priority ppu run function craftboy:ppu/sprite_draw