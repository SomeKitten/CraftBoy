scoreboard players operation map_addr ppu = tileY ppu
scoreboard players operation map_addr ppu *= 32 constants
scoreboard players operation map_addr ppu += tileX ppu
execute if score 3_2 binary matches 0 run scoreboard players add map_addr ppu 38912
execute if score 3_2 binary matches 1 run scoreboard players add map_addr ppu 39936


function craftboy:ppu/tile
