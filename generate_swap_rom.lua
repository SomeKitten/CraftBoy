local folder = "./CraftBoyDatapack/data/craftboy/functions/mbc/"
local swap_rom = io.open(folder .. "rom0_update.mcfunction", "w")

for i = 0, 255, 32 do
    swap_rom:write("execute if score rom0_bank craftboy matches " .. i ..
                       " run function craftboy:banks/rom0_bank_" .. i .. "\n")
end

swap_rom:close()

swap_rom = io.open(folder .. "rom1_update.mcfunction", "w")

for i = 0, 255 do
    swap_rom:write("execute if score rom1_bank craftboy matches " .. i ..
                       " run function craftboy:banks/rom1_bank_" .. i .. "\n")
end

swap_rom:close()
