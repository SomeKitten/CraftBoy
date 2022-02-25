util = require "util"

rom = {}

directory = "/home/kitten/プロジェクト/Gameboy/Badboy/tests/"
rom.filename = "kirby.gb"

rom.file = io.open(directory .. rom.filename, "r")
rom.data = {}

util.file_to_bytes(rom.file, rom.data, 0x0000)

if rom.filename ~= "bios.gb" then
    rom.name = util.get_name()
    rom.name_lower = rom.name:lower():gsub("[%s%.0123456789%-,]+", "")
    if rom.name_lower == "" then
        rom.name_lower = rom.filename:sub(1, -4)
                             :gsub("[%s%.0123456789%-,]+", "")
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

for i = 0, 0x7FFF do
    rom.mcfunction_rom:write("scoreboard players set " .. i .. " " ..
                                 rom.destination .. " " .. rom.data[i] .. "\n")
end

for i = 1, math.floor(#rom.data / 0x4000) do
    local file = io.open(rom.directory .. "functions/bank_" .. i ..
                             ".mcfunction", "w")

    -- file:write("say ROM BANK " .. i .. "\n")

    for j = 0x4000, 0x7FFF do
        file:write("scoreboard players set " .. j .. " rom " ..
                       rom.data[i * 0x4000 + j - 0x4000] .. "\n")
    end
end

rom.mcfunction_rom:close()
