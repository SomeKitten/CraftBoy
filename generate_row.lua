local folder = "./CraftBoyDatapack/data/craftboy/functions/ppu/"
local master = io.open(folder .. "row.mcfunction", "w")

master:write([[
# TODO bits in wrong order?
scoreboard players operation index craftboy = row ppu
function craftboy:read/tile_vram/main
scoreboard players operation in binary = transfer craftboy
function craftboy:util/binary_split0


scoreboard players add index craftboy 1
function craftboy:read/tile_vram/main
scoreboard players operation in binary = transfer craftboy
function craftboy:util/binary_split1
]])

-- optimize by splitting into smaller files

for i = 0, 7 do
    master:write([[
execute unless block ~]] .. 7 - i .. [[ ~ ~ air if score ]] .. i ..
                     [[_1 binary matches 0 if score ]] .. i ..
                     [[_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 0 run setblock ~]] ..
                     7 - i .. [[ ~ ~ lime_concrete_powder
execute unless block ~]] .. 7 - i .. [[ ~ ~ air if score ]] .. i ..
                     [[_1 binary matches 0 if score ]] .. i ..
                     [[_0 binary matches 1 if score 3_3 binary matches 0 if score 2_3 binary matches 1 run setblock ~]] ..
                     7 - i .. [[ ~ ~ lime_concrete
execute unless block ~]] .. 7 - i .. [[ ~ ~ air if score ]] .. i ..
                     [[_1 binary matches 0 if score ]] .. i ..
                     [[_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 0 run setblock ~]] ..
                     7 - i .. [[ ~ ~ green_concrete_powder
execute unless block ~]] .. 7 - i .. [[ ~ ~ air if score ]] .. i ..
                     [[_1 binary matches 0 if score ]] .. i ..
                     [[_0 binary matches 1 if score 3_3 binary matches 1 if score 2_3 binary matches 1 run setblock ~]] ..
                     7 - i .. [[ ~ ~ green_concrete

execute unless block ~]] .. 7 - i .. [[ ~ ~ air if score ]] .. i ..
                     [[_1 binary matches 1 if score ]] .. i ..
                     [[_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 0 run setblock ~]] ..
                     7 - i .. [[ ~ ~ lime_concrete_powder
execute unless block ~]] .. 7 - i .. [[ ~ ~ air if score ]] .. i ..
                     [[_1 binary matches 1 if score ]] .. i ..
                     [[_0 binary matches 0 if score 5_3 binary matches 0 if score 4_3 binary matches 1 run setblock ~]] ..
                     7 - i .. [[ ~ ~ lime_concrete
execute unless block ~]] .. 7 - i .. [[ ~ ~ air if score ]] .. i ..
                     [[_1 binary matches 1 if score ]] .. i ..
                     [[_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 0 run setblock ~]] ..
                     7 - i .. [[ ~ ~ green_concrete_powder
execute unless block ~]] .. 7 - i .. [[ ~ ~ air if score ]] .. i ..
                     [[_1 binary matches 1 if score ]] .. i ..
                     [[_0 binary matches 0 if score 5_3 binary matches 1 if score 4_3 binary matches 1 run setblock ~]] ..
                     7 - i .. [[ ~ ~ green_concrete

execute unless block ~]] .. 7 - i .. [[ ~ ~ air if score ]] .. i ..
                     [[_1 binary matches 1 if score ]] .. i ..
                     [[_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 0 run setblock ~]] ..
                     7 - i .. [[ ~ ~ lime_concrete_powder
execute unless block ~]] .. 7 - i .. [[ ~ ~ air if score ]] .. i ..
                     [[_1 binary matches 1 if score ]] .. i ..
                     [[_0 binary matches 1 if score 7_3 binary matches 0 if score 6_3 binary matches 1 run setblock ~]] ..
                     7 - i .. [[ ~ ~ lime_concrete
execute unless block ~]] .. 7 - i .. [[ ~ ~ air if score ]] .. i ..
                     [[_1 binary matches 1 if score ]] .. i ..
                     [[_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 0 run setblock ~]] ..
                     7 - i .. [[ ~ ~ green_concrete_powder
execute unless block ~]] .. 7 - i .. [[ ~ ~ air if score ]] .. i ..
                     [[_1 binary matches 1 if score ]] .. i ..
                     [[_0 binary matches 1 if score 7_3 binary matches 1 if score 6_3 binary matches 1 run setblock ~]] ..
                     7 - i .. [[ ~ ~ green_concrete


]])
end
