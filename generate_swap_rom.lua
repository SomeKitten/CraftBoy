local folder = "./CraftBoyDatapack/data/craftboy/functions/mbc/"
local swap_rom = io.open(folder .. "swap_rom.mcfunction", "w")

for i = 0, 255 do
    swap_rom:write("execute if score bank craftboy matches " .. i ..
                       " run function craftboy:mbc/bank_" .. i .. "\n")
end
