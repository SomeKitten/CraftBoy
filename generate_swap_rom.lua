local folder = "./CraftBoyDatapack/data/mbc/functions/"
local swap_rom = io.open(folder .. "swap_rom.mcfunction", "w")

for i = 1, 125 do
    swap_rom:write("execute if score rom_bank craftboy matches " .. i ..
                       " run function mbc:bank_" .. i .. "\n")
end
