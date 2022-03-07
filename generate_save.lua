util = require "util"

there =
    "/home/kitten/.minecraft/saves/GB Emulator 1_18_2/datapacks/CraftBoyDatapack/data/"
therefile = "craftboy/functions/mbc/load_save.mcfunction"

save = {}

directory = "/home/kitten/プロジェクト/Gameboy/Badboy/tests/saves/"
save.filename = "pksilver.sav"

save.file = io.open(directory .. save.filename, "r")
save.data = {}

util.file_to_bytes(save.file, save.data, 0x0000)

save.mcfunction_rom = io.open(there .. therefile, "w")

save.mcfunction_rom:write("say LOADING " .. save.filename .. "\n")

for i = 0, 0x7FFF do
    save.mcfunction_rom:write("scoreboard players set " .. i .. " sram " ..
                                  save.data[i] .. "\n")
end

save.mcfunction_rom:write("scoreboard players set ram_bank craftboy 0\n")
save.mcfunction_rom:write("function craftboy:mbc/swap_ram")

save.mcfunction_rom:close()
