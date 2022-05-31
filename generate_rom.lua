util = require "util"

rom = {}

directory = "/home/kitten/プロジェクト/Roms/Gameboy/dmg-acid2/"
rom.filename = "dmg-acid2.gb"

rom.file = io.open(directory .. rom.filename, "r")
rom.data = {}

util.file_to_bytes(rom.file, rom.data, 0x0000)

if rom.filename ~= "bios.gb" then
    rom.name = util.get_name()
    rom.name_lower = rom.filename:lower():sub(1, -4):gsub("[^a-zA-Z0-9_]+", "")
    if rom.name_lower == "" then
        rom.name_lower = rom.name:lower():gsub("[^a-zA-Z0-9_]+", "")
    end
    rom.destination = "full_rom"
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

if rom.destination == "bios" then
    rom.mcfunction_rom:write("scoreboard objectives remove bios\n")
    rom.mcfunction_rom:write("scoreboard objectives add bios dummy\n")
else
    rom.mcfunction_rom:write("scoreboard objectives remove full_rom\n")
    rom.mcfunction_rom:write("scoreboard objectives add full_rom dummy\n")
end

for i = 0, #rom.data do
    rom.mcfunction_rom:write("scoreboard players set " .. i .. " " ..
                                 rom.destination .. " " .. rom.data[i] .. "\n")
end

rom.mcfunction_rom:close()
