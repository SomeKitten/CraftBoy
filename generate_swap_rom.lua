local folder = "./CraftBoyDatapack/data/mbc/functions/"
local swap_rom = io.open(folder .. "swap_rom.mcfunction", "w")

for i = 1, 255 do
    swap_rom:write("execute if score bank craftboy matches " .. i ..
                       " run function mbc:bank_" .. i .. "\n")
end
