scoreboard players set sprite_count ppu 0
scoreboard players operation in binary = 65027 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65024 oam
scoreboard players operation sprite_higher ppu = 65024 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65025 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65026 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65031 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65028 oam
scoreboard players operation sprite_higher ppu = 65028 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65029 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65030 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65035 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65032 oam
scoreboard players operation sprite_higher ppu = 65032 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65033 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65034 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65039 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65036 oam
scoreboard players operation sprite_higher ppu = 65036 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65037 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65038 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65043 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65040 oam
scoreboard players operation sprite_higher ppu = 65040 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65041 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65042 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65047 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65044 oam
scoreboard players operation sprite_higher ppu = 65044 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65045 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65046 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65051 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65048 oam
scoreboard players operation sprite_higher ppu = 65048 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65049 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65050 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65055 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65052 oam
scoreboard players operation sprite_higher ppu = 65052 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65053 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65054 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65059 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65056 oam
scoreboard players operation sprite_higher ppu = 65056 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65057 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65058 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65063 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65060 oam
scoreboard players operation sprite_higher ppu = 65060 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65061 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65062 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65067 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65064 oam
scoreboard players operation sprite_higher ppu = 65064 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65065 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65066 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65071 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65068 oam
scoreboard players operation sprite_higher ppu = 65068 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65069 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65070 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65075 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65072 oam
scoreboard players operation sprite_higher ppu = 65072 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65073 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65074 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65079 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65076 oam
scoreboard players operation sprite_higher ppu = 65076 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65077 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65078 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65083 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65080 oam
scoreboard players operation sprite_higher ppu = 65080 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65081 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65082 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65087 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65084 oam
scoreboard players operation sprite_higher ppu = 65084 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65085 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65086 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65091 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65088 oam
scoreboard players operation sprite_higher ppu = 65088 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65089 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65090 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65095 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65092 oam
scoreboard players operation sprite_higher ppu = 65092 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65093 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65094 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65099 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65096 oam
scoreboard players operation sprite_higher ppu = 65096 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65097 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65098 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65103 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65100 oam
scoreboard players operation sprite_higher ppu = 65100 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65101 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65102 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65107 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65104 oam
scoreboard players operation sprite_higher ppu = 65104 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65105 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65106 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65111 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65108 oam
scoreboard players operation sprite_higher ppu = 65108 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65109 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65110 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65115 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65112 oam
scoreboard players operation sprite_higher ppu = 65112 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65113 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65114 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65119 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65116 oam
scoreboard players operation sprite_higher ppu = 65116 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65117 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65118 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65123 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65120 oam
scoreboard players operation sprite_higher ppu = 65120 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65121 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65122 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65127 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65124 oam
scoreboard players operation sprite_higher ppu = 65124 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65125 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65126 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65131 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65128 oam
scoreboard players operation sprite_higher ppu = 65128 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65129 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65130 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65135 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65132 oam
scoreboard players operation sprite_higher ppu = 65132 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65133 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65134 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65139 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65136 oam
scoreboard players operation sprite_higher ppu = 65136 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65137 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65138 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65143 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65140 oam
scoreboard players operation sprite_higher ppu = 65140 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65141 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65142 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65147 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65144 oam
scoreboard players operation sprite_higher ppu = 65144 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65145 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65146 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65151 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65148 oam
scoreboard players operation sprite_higher ppu = 65148 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65149 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65150 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65155 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65152 oam
scoreboard players operation sprite_higher ppu = 65152 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65153 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65154 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65159 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65156 oam
scoreboard players operation sprite_higher ppu = 65156 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65157 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65158 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65163 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65160 oam
scoreboard players operation sprite_higher ppu = 65160 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65161 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65162 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65167 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65164 oam
scoreboard players operation sprite_higher ppu = 65164 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65165 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65166 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65171 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65168 oam
scoreboard players operation sprite_higher ppu = 65168 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65169 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65170 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65175 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65172 oam
scoreboard players operation sprite_higher ppu = 65172 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65173 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65174 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65179 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65176 oam
scoreboard players operation sprite_higher ppu = 65176 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65177 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65178 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

scoreboard players operation in binary = 65183 oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = 65180 oam
scoreboard players operation sprite_higher ppu = 65180 oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += 65181 oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = 65182 oam

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

