local directory = "./CraftBoyDatapack/data/ppu/functions/"
local file = io.open(directory .. "vram_debug.mcfunction", "w")

local start_addr = 0x8000
local max_addr = 0x97FF

local size = 0x10

for tile = start_addr, max_addr, 0x10 do
    local t = (tile - start_addr) / 0x10
    local tile_x = t % size
    local tile_y = 0x1F - math.floor(t / size)

    for y = 0, 7 do
        local height = 7 - y

        file:write([[
scoreboard players operation in binary = ]] .. tile + y * 2 .. [[ vram
function util:binary_split0
scoreboard players operation in binary = ]] .. tile + y * 2 + 1 .. [[ vram
function util:binary_split1
]])
    end
end
