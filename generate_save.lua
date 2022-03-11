util = require "util"

there =
    "/home/kitten/.minecraft/saves/GB Emulator 1_18_2/datapacks/CraftBoyDatapack/data/"
therefile = "craftboy/functions/load_save.mcfunction"

save = {}

directory = "/home/kitten/プロジェクト/Gameboy/Badboy/tests/saves/"
save.filename = "marioland2glitch.sav"

save.file = io.open(directory .. save.filename, "r")
save.data = {}

util.file_to_bytes(save.file, save.data, 0x0000)

save.mcfunction = io.open(there .. therefile, "w")

save.mcfunction:write("say LOADING " .. save.filename .. "\n")

for i = 0, 0x7FFF do
    if not save.data[i] then
        save.mcfunction:write("scoreboard players set " .. i .. " sram 255\n")
    else
        save.mcfunction:write("scoreboard players set " .. i .. " sram " ..
                                  save.data[i] .. "\n")
    end
end

save.mcfunction:write("scoreboard players set rom_bank_hi craftboy 0\n")
save.mcfunction:write("function craftboy:mbc/swap_ram")

save.mcfunction:close()
