util = require "util"

rom = {}

directory =
    "/home/kitten/プロジェクト/Gameboy/Badboy/tests/mooneye-gb/emulator-only/mbc1/"
rom.filename = "bits_mode.gb"

rom.file = io.open(directory .. rom.filename, "r")
rom.data = {}

util.file_to_bytes(rom.file, rom.data, 0x0000)

if rom.filename ~= "bios.gb" then
    rom.name = util.get_name()
    rom.name_lower = rom.name:lower():gsub("[^a-zA-Z_]+", "")
    if rom.name_lower == "" then
        rom.name_lower = rom.filename:sub(1, -4):gsub("[^a-zA-Z_]+", "")
    end
    rom.destination = "rom"
else
    rom.name = "BIOS"
    rom.name_lower = "bios"
    rom.destination = "bios"
end

print(rom.name_lower)

rom.directory = "./CraftBoyDatapack/data/rom_" .. rom.name_lower .. "/"

os.execute("rm -r " .. rom.directory)
os.execute("mkdir " .. rom.directory)
os.execute("mkdir " .. rom.directory .. "functions/")
rom.mcfunction_rom = io.open(rom.directory .. "functions/" .. rom.name_lower ..
                                 ".mcfunction", "w")

if rom.data[327] >= 0x19 and rom.data[327] <= 0x1E then
    rom.mcfunction_rom:write("scoreboard players set initial_rom craftboy 0\n")
else
    rom.mcfunction_rom:write("scoreboard players set initial_rom craftboy 1\n")
end

for i = 0, 0x7FFF do
    rom.mcfunction_rom:write("scoreboard players set " .. i .. " " ..
                                 rom.destination .. " " .. rom.data[i] .. "\n")
end

-- TODO redo ROM bank swapping
-- scoreboard players operation ...
for i = 0, math.floor(#rom.data / 0x4000) do
    local file = io.open(rom.directory .. "functions/bank_" .. i ..
                             ".mcfunction", "w")

    file:write("say ROM1 BANK " .. i .. "\n")

    pcall(function()
        for j = 0x4000, 0x7FFF do
            file:write("scoreboard players set " .. j .. " rom " ..
                           rom.data[i * 0x4000 + j - 0x4000] .. "\n")
        end
    end)

    file:close()

    file = io.open(rom.directory .. "functions/bank0_" .. i .. ".mcfunction",
                   "w")

    file:write("say ROM0 BANK " .. i .. "\n")

    pcall(function()
        for j = 0x4000, 0x7FFF do
            file:write("scoreboard players set " .. j - 0x4000 .. " rom " ..
                           rom.data[i * 0x4000 + j - 0x4000] .. "\n")
        end
    end)

    file:close()
end

rom.mcfunction_rom:close()
