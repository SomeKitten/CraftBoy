util = require "util"

there =
    "/home/kitten/.minecraft/saves/GB Emulator 1_18_2/datapacks/CraftBoyDatapack/data/"
therefile = "craftboy/functions/load_save.mcfunction"

save = {}

directory = "/home/kitten/プロジェクト/Gameboy/Badboy/tests/saves/"
save.filename = "pkred.sav"

save.file = io.open(directory .. save.filename, "r")
save.data = {}

util.file_to_bytes(save.file, save.data, 0x0000)

save.mcfunction = io.open(there .. therefile, "w")

save.mcfunction:write("say LOADING " .. save.filename .. "\n")

for i = 0, 0x7FFF do
    save.mcfunction:write("scoreboard players set " .. i .. " sram " ..
                              save.data[i] .. "\n")
end

save.mcfunction:write("scoreboard players set ram_bank craftboy 0\n")
save.mcfunction:write("function craftboy:mbc/swap_ram")

save.mcfunction:close()
