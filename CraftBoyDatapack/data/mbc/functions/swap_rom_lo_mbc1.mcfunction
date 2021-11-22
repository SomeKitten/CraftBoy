scoreboard players operation in binary = transfer craftboy
function util:binary_split0

scoreboard players operation in binary = rom_bank craftboy
function util:binary_split1

scoreboard players operation 0_1 binary = 0_0 binary
scoreboard players operation 1_1 binary = 1_0 binary
scoreboard players operation 2_1 binary = 2_0 binary
scoreboard players operation 3_1 binary = 3_0 binary
scoreboard players operation 4_1 binary = 4_0 binary

function util:binary_join1
scoreboard players operation rom_bank craftboy = out binary
execute if score rom_bank craftboy matches 0 run scoreboard players set rom_bank crafboy 1
