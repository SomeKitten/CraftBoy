scoreboard players operation index craftboy = map_addr ppu
function craftboy:read/tile_map_vram/main
scoreboard players operation tileAddr ppu = transfer craftboy


scoreboard players operation tileAddr ppu *= 16 constants


scoreboard players operation row ppu = y ppu
scoreboard players operation row ppu *= -2 constants
scoreboard players add row ppu 14
scoreboard players operation row ppu += tileAddr ppu

execute if score 4_2 binary matches 1 run scoreboard players add row ppu 32768
execute if score 4_2 binary matches 0 run scoreboard players add row ppu 36864
execute if score 4_2 binary matches 0 if score row ppu matches 38912.. run scoreboard players remove row ppu 4096

execute at @s run function craftboy:ppu/row

execute at @s run tp ~8 ~ ~


scoreboard players add tileX ppu 1
execute if score tileX ppu matches 32.. run scoreboard players remove tileX ppu 32
