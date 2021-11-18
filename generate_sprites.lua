local folder = "./CraftBoyDatapack/data/ppu/functions/"
local master = io.open(folder .. "sprites.mcfunction", "w")

local oam_min = 0xFE00
local oam_max = 0xFE9F

for i = oam_min, oam_max, 4 do
    master:write([[
scoreboard players operation sprite_lower ppu = ]] .. i .. [[ oam
scoreboard players operation sprite_higher ppu = ]] .. i .. [[ oam

scoreboard players remove sprite_lower ppu 16
scoreboard players remove sprite_higher ppu 8
# scoreboard players add sprite_lower ppu 8
# scoreboard players add sprite_higher ppu 16

scoreboard players operation sprite ppu = ]] .. i + 2 .. [[ oam

scoreboard players operation sprite ppu *= 16 constants

scoreboard players operation row ppu = y ppu
scoreboard players operation row ppu *= -2 constants
scoreboard players add row ppu 14
scoreboard players operation row ppu += sprite ppu

scoreboard players add row ppu 32768

execute if score sprite_lower ppu <= 65348 io if score 65348 io < sprite_higher ppu run function ppu:row

]])
end
