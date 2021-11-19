local folder = "./CraftBoyDatapack/data/ppu/functions/"
local sprites = io.open(folder .. "sprites.mcfunction", "w")

local oam_min = 0xFE00
local oam_max = 0xFE9F

sprites:write("scoreboard players set sprite_count ppu 0\n")

-- TODO optimize by making as much optional as possible

for i = oam_min, oam_max, 4 do
    sprites:write([[
scoreboard players operation in binary = ]] .. i + 3 .. [[ oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = ]] .. i .. [[ oam
scoreboard players operation sprite_higher ppu = ]] .. i .. [[ oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += ]] .. i + 1 .. [[ oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8

scoreboard players operation sprite ppu = ]] .. i + 2 .. [[ oam

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

]])
end
