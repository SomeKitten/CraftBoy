local folder = "./CraftBoyDatapack/data/dma/functions/"

local recursions = 0

function recursive(depth, unique_name, min, max)
    local len = math.floor((max - min) / 2)
    if len * 2 >= 4 then
        local filename = unique_name .. "_" .. depth .. "_" .. recursions

        local dma_file = io.open(folder .. filename .. ".mcfunction", "w")

        local child_filename = unique_name .. "_" .. (depth + 1) .. "_" ..
                                   recursions
        dma_file:write("execute if score transfer craftboy matches " .. min ..
                           ".." .. (min + len) .. " run function dma:" ..
                           child_filename .. "\n")

        dma_file:close()

        recursive(depth + 1, unique_name, min, min + len)

        dma_file = io.open(folder .. filename .. ".mcfunction", "a")

        child_filename = unique_name .. "_" .. (depth + 1) .. "_" .. recursions
        dma_file:write("execute if score transfer craftboy matches " ..
                           (min + len + 1) .. ".." .. max ..
                           " run function dma:" .. child_filename .. "\n")

        dma_file:close()
        recursive(depth + 1, unique_name, min + len + 1, max)
    else
        local dma_file = io.open(
                             folder .. unique_name .. "_" .. depth .. "_" ..
                                 recursions .. ".mcfunction", "w")

        for i = min, max do
            dma_file:write("execute if score transfer craftboy matches " .. i ..
                               " run function dma:" .. i .. "\n")
        end

        dma_file:close()

        recursions = recursions + 1
    end
end

function get_area(i)
    if i < 0x00FF then
        return "bios"
    elseif i < 0x7FFF then
        return "rom"
    elseif i < 0x9FFF then
        return "vram"
    elseif i < 0xBFFF then
        return "ram"
    elseif i < 0xDFFF then
        return "wram"
    else
        return "undefined"
    end
end

recursive(0, "dma", 0, 0xF1)

for i = 0, 0xF1 do
    local f = io.open(folder .. i .. ".mcfunction", "w")
    f:write("say OAM DMA " .. i .. "\n")
    for j = 0, 0x9F do
        f:write("scoreboard players operation " .. (0xFE00 + j) .. " oam = " ..
                    (i * 0x100 + j) .. " " .. get_area(i * 0x100 + j) .. "\n")
    end
    f:close()
end
