local folder = "./CraftBoyDatapack/data/scan/functions/"

local master = io.open(folder .. "draw.mcfunction", "w")

for i = 0, 143 do
    master:write("execute if score 65348 io matches " .. i ..
                     " run function scan:line_" .. i .. "\n")

    local file = io.open(folder .. "line_" .. i .. ".mcfunction", "w")

    file:write([[
execute as @e[name="inner_screen_copy"] at @s run tp @s ~ ~ 0

execute as @e[name="inner_screen_copy"] at @s store result entity @s Pos[0] double 1 run scoreboard players get 65347 io

scoreboard players set SCY ppu 255
scoreboard players operation SCY ppu -= 65346 io
scoreboard players operation SCY ppu -= 144 constants
execute as @e[name="inner_screen_copy"] at @s store result entity @s Pos[2] double -1 run scoreboard players get SCY ppu

execute as @e[name="inner_screen_paste"] at @s run fill ~ ~ ~]] .. i ..
                   [[ ~160 ~ ~]] .. i .. [[ air


execute as @e[name="inner_screen_copy"] at @s run clone ~-256 ~ ~]] .. i + 256 ..
                   [[ ~-96 ~ ~]] .. i + 256 .. [[ 0 0 0
execute as @e[name="inner_screen_paste"] at @s run clone 0 0 0 160 0 0 ~ ~ ~]] ..
                   i .. [[ masked

execute as @e[name="inner_screen_copy"] at @s run clone ~ ~ ~]] .. i + 256 ..
                   [[ ~160 ~ ~]] .. i + 256 .. [[ 0 0 0
execute as @e[name="inner_screen_paste"] at @s run clone 0 0 0 160 0 0 ~ ~ ~]] ..
                   i .. [[ masked

execute as @e[name="inner_screen_copy"] at @s run clone ~256 ~ ~]] .. i + 256 ..
                   [[ ~416 ~ ~]] .. i + 256 .. [[ 0 0 0
execute as @e[name="inner_screen_paste"] at @s run clone 0 0 0 160 0 0 ~ ~ ~]] ..
                   i .. [[ masked


execute as @e[name="inner_screen_copy"] at @s run clone ~-256 ~ ~]] .. i ..
                   [[ ~-96 ~ ~]] .. i .. [[ 0 0 0
execute as @e[name="inner_screen_paste"] at @s run clone 0 0 0 160 0 0 ~ ~ ~]] ..
                   i .. [[ masked

execute as @e[name="inner_screen_copy"] at @s run clone ~ ~ ~]] .. i ..
                   [[ ~160 ~ ~]] .. i .. [[ 0 0 0
execute as @e[name="inner_screen_paste"] at @s run clone 0 0 0 160 0 0 ~ ~ ~]] ..
                   i .. [[ masked

execute as @e[name="inner_screen_copy"] at @s run clone ~256 ~ ~]] .. i ..
                   [[ ~416 ~ ~]] .. i .. [[ 0 0 0
execute as @e[name="inner_screen_paste"] at @s run clone 0 0 0 160 0 0 ~ ~ ~]] ..
                   i .. [[ masked


execute as @e[name="inner_screen_copy"] at @s run clone ~-256 ~ ~]] .. i - 256 ..
                   [[ ~-96 ~ ~]] .. i - 256 .. [[ 0 0 0
execute as @e[name="inner_screen_paste"] at @s run clone 0 0 0 160 0 0 ~ ~ ~]] ..
                   i .. [[ masked

execute as @e[name="inner_screen_copy"] at @s run clone ~ ~ ~]] .. i - 256 ..
                   [[ ~160 ~ ~]] .. i - 256 .. [[ 0 0 0
execute as @e[name="inner_screen_paste"] at @s run clone 0 0 0 160 0 0 ~ ~ ~]] ..
                   i .. [[ masked

execute as @e[name="inner_screen_copy"] at @s run clone ~256 ~ ~]] .. i - 256 ..
                   [[ ~416 ~ ~]] .. i - 256 .. [[ 0 0 0
execute as @e[name="inner_screen_paste"] at @s run clone 0 0 0 160 0 0 ~ ~ ~]] ..
                   i .. [[ masked
]])
    file:close()
end
