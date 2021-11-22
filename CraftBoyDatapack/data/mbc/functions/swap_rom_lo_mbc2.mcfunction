scoreboard players operation in binary = transfer craftboy
function util:binary_split0

scoreboard players set 4_0 binary 0
scoreboard players set 5_0 binary 0
scoreboard players set 6_0 binary 0
scoreboard players set 7_0 binary 0

function util:binary_join0

scoreboard players operation rom_bank craftboy = out binary
execute if score rom_bank craftboy matches 0 run scoreboard players set rom_bank crafboy 1
