local folder = "./CraftBoyDatapack/data/craftboy/functions/mbc/"

local file = io.open(folder .. "clear_ram.mcfunction", "w")
file:write("say CLEARING RAM\n")

for j = 0x0000, 0x1FFF do
    file:write("scoreboard players set " .. j + 0xA000 .. " ram 0\n")
end
file:close()
