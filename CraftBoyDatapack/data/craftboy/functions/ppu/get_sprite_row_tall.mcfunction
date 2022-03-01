scoreboard players remove sprite_lower ppu 16

scoreboard players operation in binary = sprite ppu
function craftboy:util/binary_split3
scoreboard players set 0_3 binary 0
function craftboy:util/binary_join3
scoreboard players operation sprite ppu = out binary

scoreboard players operation sprite ppu *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += sprite ppu

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 15
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768
