util = require "util"

command_set_rom = {"scoreboard players set ", " ", " ", "\n"}

rom = {}
rom.filename =
    "/home/kitten/プロジェクト/Gameboy/Badboy/tests/flappyboy.gb"

rom.file = io.open(rom.filename, "r")
rom.data = {}

util.file_to_bytes(rom.file, rom.data, 0x0000)

if rom.filename ~= "bios.gb" then
    rom.name = util.get_name()
    rom.name_lower = rom.name:lower():gsub("%s+", "")
    rom.destination = "rom"
else
    rom.name = "BIOS"
    rom.name_lower = "bios"
    rom.destination = "bios"
end

print(rom.name_lower)

rom.directory = "./CraftBoyDatapack/data/rom_" .. rom.name_lower .. "/"

os.execute("mkdir " .. rom.directory)
os.execute("mkdir " .. rom.directory .. "functions/")
rom.mcfunction_rom = io.open(rom.directory .. "functions/" .. rom.name_lower ..
                                 ".mcfunction", "w")

for i = 0, #rom.data do
    rom.mcfunction_rom:write(command_set_rom[1] .. i .. command_set_rom[2] ..
                                 rom.destination .. command_set_rom[3] ..
                                 rom.data[i] .. command_set_rom[4])
end

rom.mcfunction_rom:close()
