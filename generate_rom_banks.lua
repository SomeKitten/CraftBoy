local folder = "./CraftBoyDatapack/data/craftboy/functions/mbc/"

for i = 1, 125 do
    local bank = io.open(folder .. "bank_" .. i .. ".mcfunction", "w")
    bank:write("say SWITCHING TO BANK" .. i .. "\n")

    for j = 0x0000, 0x3FFF do
        bank:write("scoreboard players operation " .. j + 0x4000 .. " rom = " ..
                       j + i * 0x4000 .. " full_rom\n")
    end
end
