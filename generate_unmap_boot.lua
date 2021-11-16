os.execute("mkdir ./CraftBoyDatapack/data/unmap")
os.execute("mkdir ./CraftBoyDatapack/data/unmap/functions")

boot = io.open("./CraftBoyDatapack/data/unmap/functions/boot.mcfunction", "w")

for i = 0, 255 do
    boot:write("scoreboard players operation " .. i .. " bios = " .. i ..
                   " rom\n")
end

boot:close()
