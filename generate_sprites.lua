local folder = "./CraftBoyDatapack/data/ppu/functions/"
local sprites = io.open(folder .. "sprites.mcfunction", "w")

local oam_min = 0xFE00
local oam_max = 0xFEA0 - 4

sprites:write("scoreboard players set sprite_count ppu 0\n")

-- TODO optimize by making as much optional as possible

for i = oam_max, oam_min, -4 do
    sprites:write([[
scoreboard players operation in binary = ]] .. i + 3 .. [[ oam
function util:binary_split4

scoreboard players operation sprite_lower ppu = ]] .. i .. [[ oam
scoreboard players operation sprite_higher ppu = ]] .. i .. [[ oam

scoreboard players operation tmp_x ppu = screen_x graphics
scoreboard players operation tmp_x ppu += ]] .. i + 1 .. [[ oam
scoreboard players remove tmp_x ppu 8
execute store result entity @e[type=minecraft:armor_stand,name=inner_screen_paste1,limit=1] Pos[0] double 1 run scoreboard players get tmp_x ppu

scoreboard players operation sprite ppu = ]] .. i + 2 .. [[ oam

execute if score 2_2 binary matches 0 run function ppu:get_sprite_row_normal
execute if score 2_2 binary matches 1 run function ppu:get_sprite_row_tall

execute if score 4_4 binary matches 0 run scoreboard players operation in binary = 65352 io
execute if score 4_4 binary matches 1 run scoreboard players operation in binary = 65353 io
function util:binary_split3

execute if score 5_4 binary matches 0 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row
execute if score 5_4 binary matches 1 if score 7_4 binary = sprite_bg_priority ppu if score 1_2 binary matches 1 if score sprite_count ppu matches ..9 if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:sprite_row_flipped

]])
end
