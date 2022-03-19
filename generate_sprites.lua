local folder = "./CraftBoyDatapack/data/craftboy/functions/ppu/"
local sprites = io.open(folder .. "sprites.mcfunction", "w")

local oam_min = 0xFE00
local oam_max = 0xFEA0 - 4

sprites:write([[
function craftboy:sort/sprites

]])

for i = 0, 9 do
    local sprite = io.open(folder .. "sprite_" .. i .. ".mcfunction", "w")

    sprite:write([[
scoreboard players operation index craftboy = value_]] .. 9 - i .. [[ sort

scoreboard players add index craftboy 3
function craftboy:read/oam/main
scoreboard players operation in binary = transfer craftboy
function craftboy:util/binary_split4

execute if score 7_4 binary matches 0 if score sprite_bg_priority ppu matches 0 run function craftboy:ppu/sprite_draw
execute if score 7_4 binary matches 1 if score sprite_bg_priority ppu matches 1 run function craftboy:ppu/sprite_draw_behind]])
    sprite:close()

    sprites:write([[
scoreboard players operation sprite_lower ppu = lower_]] .. 9 - i .. [[ sort
scoreboard players operation sprite_higher ppu = higher_]] .. 9 - i .. [[ sort
execute if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function craftboy:ppu/sprite_]] ..
                      i .. [[


]])
end
