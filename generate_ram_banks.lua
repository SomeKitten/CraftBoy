local folder = "./CraftBoyDatapack/data/mbc/functions/"

for i = 0, 3 do
    local bank = io.open(folder .. "ram_bank_" .. i .. ".mcfunction", "w")
    bank:write("say SWITCHING TO RAM BANK " .. i .. "\n")

    for j = 0x0000, 0x1FFF do
        bank:write("scoreboard players operation " .. j + 0xA000 .. " ram = " ..
                       j + i * 0x2000 .. " sram\n")
    end
    bank:close()

    bank = io.open(folder .. "ram_save_" .. i .. ".mcfunction", "w")
    bank:write("say SAVING RAM BANK " .. i .. "\n")

    for j = 0x0000, 0x1FFF do
        bank:write("scoreboard players operation " .. j + i * 0x2000 ..
                       " sram = " .. j + 0xA000 .. " ram\n")
    end
    bank:close()
end
