local command_split_0 = {
    "scoreboard players operation in binary = ",
    " vram\n" .. "function util:binary_split0\n"
}
local command_split_1 = {
    "scoreboard players operation in binary = ",
    " vram\n" .. "function util:binary_split1\n"
}

local command_test_0 = {
    "execute if score ", "_0 binary matches 0 if score ",
    "_1 binary matches 0 at @e[type=minecraft:armor_stand,name=screen] run setblock ~",
    " ~ ~", " green_concrete\n"
}
local command_test_1 = {
    "execute if score ", "_0 binary matches 0 if score ",
    "_1 binary matches 1 at @e[type=minecraft:armor_stand,name=screen] run setblock ~",
    " ~ ~", " green_concrete_powder\n"
}
local command_test_2 = {
    "execute if score ", "_0 binary matches 1 if score ",
    "_1 binary matches 0 at @e[type=minecraft:armor_stand,name=screen] run setblock ~",
    " ~ ~", " lime_concrete\n"
}
local command_test_3 = {
    "execute if score ", "_0 binary matches 1 if score ",
    "_1 binary matches 1 at @e[type=minecraft:armor_stand,name=screen] run setblock ~",
    " ~ ~", " lime_concrete_powder\n"
}

local directory = "./CraftBoyDatapack/data/ppu/functions/"
local file = io.open(directory .. "vram_debug.mcfunction", "w")

local width = 0x10

for tile = 0x8000, 0x97FF, 0x10 do
    local t = (tile - 0x8000) / 0x10
    local tile_x = t % width
    local tile_y = 0x1F - math.floor(t / width)

    for y = 0, 7 do
        local height = 7 - y

        file:write(command_split_0[1] .. (tile + y * 2) .. command_split_0[2])
        file:write(command_split_1[1] .. (tile + y * 2 + 1) ..
                       command_split_1[2])

        for x = 0, 7 do
            local bit = 7 - x

            file:write(command_test_0[1] .. bit .. command_test_0[2] .. bit ..
                           command_test_0[3] .. tile_x * 8 + x ..
                           command_test_0[4] .. -(tile_y * 8 + height) ..
                           command_test_0[5])
            file:write(command_test_1[1] .. bit .. command_test_1[2] .. bit ..
                           command_test_1[3] .. tile_x * 8 + x ..
                           command_test_1[4] .. -(tile_y * 8 + height) ..
                           command_test_1[5])
            file:write(command_test_2[1] .. bit .. command_test_2[2] .. bit ..
                           command_test_2[3] .. tile_x * 8 + x ..
                           command_test_2[4] .. -(tile_y * 8 + height) ..
                           command_test_2[5])
            file:write(command_test_3[1] .. bit .. command_test_3[2] .. bit ..
                           command_test_3[3] .. tile_x * 8 + x ..
                           command_test_3[4] .. -(tile_y * 8 + height) ..
                           command_test_3[5])
        end
    end
end

file:close()
