local directory = "./CraftBoyDatapack/data/ppu/functions/"
local file = io.open(directory .. "draw_screen.mcfunction", "w")

local tile_vram = 0x9000
local map_vram = 0x9800

-- 15s
-- local command_read_tile_vram = "function craftboy:read_tile_vram\n"
-- local command_read_tile_map_vram = "function craftboy:read_tile_map_vram\n"

-- 13s
local command_read_tile_vram = "function read:tile_vram_0_0\n"
local command_read_tile_map_vram = "function read:tile_map_vram_0_0\n"

local command_ld = {"scoreboard players operation ", " = ", "\n"}

-- 13s
local command_inc_tile_row_addr = "scoreboard players add tile_row_addr ppu 1\n"

local command_prep_tile_row_addr =
    "execute if score tile_row_addr ppu >= 128 constants run scoreboard players remove tile_row_addr ppu 256\n" ..
        "scoreboard players operation tile_row_addr ppu *= 16 constants\n" ..
        "scoreboard players add tile_row_addr ppu " .. tile_vram .. "\n"

local command_split_0 = "function util:binary_split0\n"
local command_split_1 = "function util:binary_split1\n"

local command_add = {
    "scoreboard players operation ", "_0 binary += ", "_1 binary\n"
}

local command_test_0 = {
    "execute if score ",
    "_0 binary matches 0 at @e[type=minecraft:armor_stand,name=screen] run setblock ~",
    " ~", " ~ green_concrete\n"
}
local command_test_1 = {
    "execute if score ",
    "_0 binary matches 1 at @e[type=minecraft:armor_stand,name=screen] run setblock ~",
    " ~", " ~ green_concrete_powder\n"
}
local command_test_2 = {
    "execute if score ",
    "_0 binary matches 2 at @e[type=minecraft:armor_stand,name=screen] run setblock ~",
    " ~", " ~ lime_concrete\n"
}
local command_test_3 = {
    "execute if score ",
    "_0 binary matches 3 at @e[type=minecraft:armor_stand,name=screen] run setblock ~",
    " ~", " ~ lime_concrete_powder\n"
}

file:write("scoreboard players set tile_map ppu " .. map_vram .. "\n")

for map_tile = map_vram, 0x9BFF do
    local tile_x = (map_tile - map_vram) % 32
    local tile_y = 31 - math.floor((map_tile - map_vram) / 32)

    file:write(command_ld[1] .. "index craftboy" .. command_ld[2] ..
                   "tile_map ppu" .. command_ld[3])
    file:write(command_read_tile_map_vram)
    file:write(command_ld[1] .. "tile_row_addr ppu" .. command_ld[2] ..
                   "transfer craftboy" .. command_ld[3])

    file:write(command_prep_tile_row_addr)

    for y = 7, 0, -1 do
        file:write(command_ld[1] .. "index craftboy" .. command_ld[2] ..
                       "tile_row_addr ppu" .. command_ld[3])
        file:write(command_read_tile_vram)

        file:write(command_ld[1] .. "in binary" .. command_ld[2] ..
                       "transfer craftboy" .. command_ld[3])
        file:write(command_split_0)

        file:write(command_inc_tile_row_addr)

        file:write(command_ld[1] .. "index craftboy" .. command_ld[2] ..
                       "tile_row_addr ppu" .. command_ld[3])
        file:write(command_read_tile_vram)

        file:write(command_ld[1] .. "in binary" .. command_ld[2] ..
                       "transfer craftboy" .. command_ld[3])
        file:write(command_split_1)

        file:write(command_inc_tile_row_addr)

        for x = 0, 7 do
            local bit = 7 - x
            file:write(command_add[1] .. bit .. command_add[2] .. bit ..
                           command_add[3])

            file:write(command_test_0[1] .. bit .. command_test_0[2] .. tile_x *
                           8 + x .. command_test_0[3] .. tile_y * 8 + y ..
                           command_test_0[4])
            file:write(command_test_1[1] .. bit .. command_test_1[2] .. tile_x *
                           8 + x .. command_test_1[3] .. tile_y * 8 + y ..
                           command_test_1[4])
            file:write(command_test_2[1] .. bit .. command_test_2[2] .. tile_x *
                           8 + x .. command_test_2[3] .. tile_y * 8 + y ..
                           command_test_2[4])
            file:write(command_test_3[1] .. bit .. command_test_3[2] .. tile_x *
                           8 + x .. command_test_3[3] .. tile_y * 8 + y ..
                           command_test_3[4])
        end
    end

    file:write("scoreboard players add tile_map ppu 1\n")
end

file:close()
