local folder = "./CraftBoyDatapack/data/sort/functions/"
local summon = io.open(folder .. "summon.mcfunction", "w")

summon:write("kill @e[type=armor_stand,name=sort_root]\n")
summon:write("kill @e[type=armor_stand,tag=sort]\n")
summon:write(
    'summon minecraft:armor_stand ~ ~ ~ {CustomName:"\\"sort_root\\"",NoGravity:1b}\n')
for i = 0, 39 do
    summon:write('summon minecraft:armor_stand ~' .. i ..
                     ' ~ ~ {CustomName:"\\"sort_' .. i ..
                     '\\"",NoGravity:1b,Tags:["sort"],ArmorItems:[{},{},{id:leather_chestplate,Count:1b,tag:{Damage:0}},{id:leather_helmet,Count:1b,tag:{Damage:0}}]}\n')
end
