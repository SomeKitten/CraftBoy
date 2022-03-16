local folder = "./CraftBoyDatapack/data/craftboy/functions/banks/"

os.execute("mkdir " .. folder)

local bank
for i = 0, 255 do
    if i % 32 == 0 then
        bank = io.open(folder .. "rom0_bank_" .. i .. ".mcfunction", "w")
        -- bank:write("say ROM0 BANK " .. i .. "\n")

        for j = 0x0000, 0x3FFF do
            bank:write("scoreboard players operation " .. j .. " rom = " .. j +
                           i * 0x4000 .. " full_rom\n")
        end
        bank:close()
    end

    bank = io.open(folder .. "rom1_bank_" .. i .. ".mcfunction", "w")
    -- bank:write("say ROM1 BANK " .. i .. "\n")

    for j = 0x0000, 0x3FFF do
        bank:write("scoreboard players operation " .. j + 0x4000 .. " rom = " ..
                       j + i * 0x4000 .. " full_rom\n")
    end
    bank:close()
end
