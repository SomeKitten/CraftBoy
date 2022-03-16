local folder = "./CraftBoyDatapack/data/craftboy/functions/banks/"

os.execute("mkdir " .. folder)

for i = 0, 15 do
    local bank = io.open(folder .. "ram_load_" .. i .. ".mcfunction", "w")
    -- bank:write("say LOADING RAM BANK " .. i .. "\n")

    for j = 0x0000, 0x1FFF do
        bank:write("scoreboard players operation " .. j + 0xA000 .. " ram = " ..
                       j + i * 0x2000 .. " sram\n")
    end
    bank:close()

    bank = io.open(folder .. "ram_save_" .. i .. ".mcfunction", "w")
    -- bank:write("say SAVING RAM BANK " .. i .. "\n")

    for j = 0x0000, 0x1FFF do
        bank:write("scoreboard players operation " .. j + i * 0x2000 ..
                       " sram = " .. j + 0xA000 .. " ram\n")
    end
    bank:close()
end
