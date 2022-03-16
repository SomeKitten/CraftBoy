os.execute("mkdir ./CraftBoyDatapack/data/craftboy/functions/unmap")

boot = io.open(
           "./CraftBoyDatapack/data/craftboy/functions/unmap/boot.mcfunction",
           "w")

for i = 0, 255 do
    boot:write("scoreboard players operation " .. i .. " bios = " .. i ..
                   " full_rom\n")
end

boot:close()
