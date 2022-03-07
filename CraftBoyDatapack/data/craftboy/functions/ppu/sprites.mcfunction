function craftboy:sort/sprites

scoreboard players set sprite_count ppu 0

scoreboard players operation index craftboy = value_9 sort

function craftboy:read/oam/main
scoreboard players operation sprite_lower ppu = transfer craftboy
scoreboard players operation sprite_higher ppu = transfer craftboy

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
scoreboard players operation sprite ppu = transfer craftboy

execute if score 2_2 binary matches 0 run function craftboy:ppu/get_sprite_row_normal
execute if score 2_2 binary matches 1 run function craftboy:ppu/get_sprite_row_tall

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function craftboy:util/binary_split3

execute if score 5_4 binary matches 0 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu at @s run function craftboy:ppu/sprite_row
execute if score 5_4 binary matches 1 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu at @s run function craftboy:ppu/sprite_row_flipped

scoreboard players operation index craftboy = value_8 sort

function craftboy:read/oam/main
scoreboard players operation sprite_lower ppu = transfer craftboy
scoreboard players operation sprite_higher ppu = transfer craftboy

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
scoreboard players operation sprite ppu = transfer craftboy

execute if score 2_2 binary matches 0 run function craftboy:ppu/get_sprite_row_normal
execute if score 2_2 binary matches 1 run function craftboy:ppu/get_sprite_row_tall

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function craftboy:util/binary_split3

execute if score 5_4 binary matches 0 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu at @s run function craftboy:ppu/sprite_row
execute if score 5_4 binary matches 1 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu at @s run function craftboy:ppu/sprite_row_flipped

scoreboard players operation index craftboy = value_7 sort

function craftboy:read/oam/main
scoreboard players operation sprite_lower ppu = transfer craftboy
scoreboard players operation sprite_higher ppu = transfer craftboy

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
scoreboard players operation sprite ppu = transfer craftboy

execute if score 2_2 binary matches 0 run function craftboy:ppu/get_sprite_row_normal
execute if score 2_2 binary matches 1 run function craftboy:ppu/get_sprite_row_tall

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function craftboy:util/binary_split3

execute if score 5_4 binary matches 0 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu at @s run function craftboy:ppu/sprite_row
execute if score 5_4 binary matches 1 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu at @s run function craftboy:ppu/sprite_row_flipped

scoreboard players operation index craftboy = value_6 sort

function craftboy:read/oam/main
scoreboard players operation sprite_lower ppu = transfer craftboy
scoreboard players operation sprite_higher ppu = transfer craftboy

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
scoreboard players operation sprite ppu = transfer craftboy

execute if score 2_2 binary matches 0 run function craftboy:ppu/get_sprite_row_normal
execute if score 2_2 binary matches 1 run function craftboy:ppu/get_sprite_row_tall

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function craftboy:util/binary_split3

execute if score 5_4 binary matches 0 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu at @s run function craftboy:ppu/sprite_row
execute if score 5_4 binary matches 1 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu at @s run function craftboy:ppu/sprite_row_flipped

scoreboard players operation index craftboy = value_5 sort

function craftboy:read/oam/main
scoreboard players operation sprite_lower ppu = transfer craftboy
scoreboard players operation sprite_higher ppu = transfer craftboy

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
scoreboard players operation sprite ppu = transfer craftboy

execute if score 2_2 binary matches 0 run function craftboy:ppu/get_sprite_row_normal
execute if score 2_2 binary matches 1 run function craftboy:ppu/get_sprite_row_tall

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function craftboy:util/binary_split3

execute if score 5_4 binary matches 0 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu at @s run function craftboy:ppu/sprite_row
execute if score 5_4 binary matches 1 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu at @s run function craftboy:ppu/sprite_row_flipped

scoreboard players operation index craftboy = value_4 sort

function craftboy:read/oam/main
scoreboard players operation sprite_lower ppu = transfer craftboy
scoreboard players operation sprite_higher ppu = transfer craftboy

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
scoreboard players operation sprite ppu = transfer craftboy

execute if score 2_2 binary matches 0 run function craftboy:ppu/get_sprite_row_normal
execute if score 2_2 binary matches 1 run function craftboy:ppu/get_sprite_row_tall

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function craftboy:util/binary_split3

execute if score 5_4 binary matches 0 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu at @s run function craftboy:ppu/sprite_row
execute if score 5_4 binary matches 1 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu at @s run function craftboy:ppu/sprite_row_flipped

scoreboard players operation index craftboy = value_3 sort

function craftboy:read/oam/main
scoreboard players operation sprite_lower ppu = transfer craftboy
scoreboard players operation sprite_higher ppu = transfer craftboy

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
scoreboard players operation sprite ppu = transfer craftboy

execute if score 2_2 binary matches 0 run function craftboy:ppu/get_sprite_row_normal
execute if score 2_2 binary matches 1 run function craftboy:ppu/get_sprite_row_tall

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function craftboy:util/binary_split3

execute if score 5_4 binary matches 0 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu at @s run function craftboy:ppu/sprite_row
execute if score 5_4 binary matches 1 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu at @s run function craftboy:ppu/sprite_row_flipped

scoreboard players operation index craftboy = value_2 sort

function craftboy:read/oam/main
scoreboard players operation sprite_lower ppu = transfer craftboy
scoreboard players operation sprite_higher ppu = transfer craftboy

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
scoreboard players operation sprite ppu = transfer craftboy

execute if score 2_2 binary matches 0 run function craftboy:ppu/get_sprite_row_normal
execute if score 2_2 binary matches 1 run function craftboy:ppu/get_sprite_row_tall

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function craftboy:util/binary_split3

execute if score 5_4 binary matches 0 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu at @s run function craftboy:ppu/sprite_row
execute if score 5_4 binary matches 1 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu at @s run function craftboy:ppu/sprite_row_flipped

scoreboard players operation index craftboy = value_1 sort

function craftboy:read/oam/main
scoreboard players operation sprite_lower ppu = transfer craftboy
scoreboard players operation sprite_higher ppu = transfer craftboy

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
scoreboard players operation sprite ppu = transfer craftboy

execute if score 2_2 binary matches 0 run function craftboy:ppu/get_sprite_row_normal
execute if score 2_2 binary matches 1 run function craftboy:ppu/get_sprite_row_tall

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function craftboy:util/binary_split3

execute if score 5_4 binary matches 0 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu at @s run function craftboy:ppu/sprite_row
execute if score 5_4 binary matches 1 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu at @s run function craftboy:ppu/sprite_row_flipped

scoreboard players operation index craftboy = value_0 sort

function craftboy:read/oam/main
scoreboard players operation sprite_lower ppu = transfer craftboy
scoreboard players operation sprite_higher ppu = transfer craftboy

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
scoreboard players operation sprite ppu = transfer craftboy

execute if score 2_2 binary matches 0 run function craftboy:ppu/get_sprite_row_normal
execute if score 2_2 binary matches 1 run function craftboy:ppu/get_sprite_row_tall

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function craftboy:util/binary_split3

execute if score 5_4 binary matches 0 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu at @s run function craftboy:ppu/sprite_row
execute if score 5_4 binary matches 1 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu at @s run function craftboy:ppu/sprite_row_flipped

