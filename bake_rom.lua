util = require "util"

rom = {}

directory = "/home/kitten/プロジェクト/Roms/Gameboy/"
rom.filename = "pkred.gb"

rom.file = io.open(directory .. rom.filename, "r")
rom.data = {}

util.file_to_bytes(rom.file, rom.data, 0x0000)

rom.directory =
    "/home/kitten/.minecraft/saves/GB Emulator 1_18_2/datapacks/CraftBoyDatapack/data/craftboy/functions/banks/"

local file
for i = 0, math.floor(#rom.data / 0x4000) do
    if i % 32 == 0 then
        file = io.open(rom.directory .. "rom0_bank_" .. i .. ".mcfunction", "w")

        -- file:write("say ROM0 BANK " .. i .. "\n")

        pcall(function()
            for j = 0x4000, 0x7FFF do
                file:write("scoreboard players set " .. j - 0x4000 .. " rom " ..
                               rom.data[i * 0x4000 + j - 0x4000] .. "\n")
            end
        end)

        file:close()
    end

    file = io.open(rom.directory .. "rom1_bank_" .. i .. ".mcfunction", "w")

    -- file:write("say ROM1 BANK " .. i .. "\n")

    pcall(function()
        for j = 0x4000, 0x7FFF do
            file:write("scoreboard players set " .. j .. " rom " ..
                           rom.data[i * 0x4000 + j - 0x4000] .. "\n")
        end
    end)

    file:close()
end
