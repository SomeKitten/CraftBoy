local folder = "./CraftBoyDatapack/data/graphics/functions/"
local master = io.open(folder .. "oam_dma.mcfunction", "w")

master:write("say OAM DMA\n")

master:write(
    "scoreboard players operation dma_from graphics = transfer craftboy\n")
master:write("scoreboard players operation dma_from graphics *= 256 constants\n")

master:write("scoreboard players set dma_to graphics 65024\n")

for i = 0, 159 do
    master:write(
        "scoreboard players operation index craftboy = dma_from graphics\n")
    master:write("function craftboy:read\n")
    master:write(
        "scoreboard players operation index craftboy = dma_to graphics\n")
    master:write("function craftboy:write\n")

    master:write("scoreboard players add dma_from graphics 1\n")
    master:write("scoreboard players add dma_to graphics 1\n")
end
