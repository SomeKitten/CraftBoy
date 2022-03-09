scoreboard players operation transfer craftboy *= 16 constants

execute if score 6_4 binary matches 0 run scoreboard players operation row ppu = 65348 io
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu -= sprite_lower ppu
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 0 run scoreboard players operation row ppu += transfer craftboy

execute if score 6_4 binary matches 1 run scoreboard players operation row ppu = sprite_lower ppu
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu -= 65348 io
execute if score 6_4 binary matches 1 run scoreboard players add row ppu 7
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu *= 2 constants
execute if score 6_4 binary matches 1 run scoreboard players operation row ppu += transfer craftboy

scoreboard players add row ppu 32768