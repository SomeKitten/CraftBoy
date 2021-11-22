scoreboard players operation in binary = transfer craftboy
function util:binary_split0

scoreboard players operation in binary = rom_bank craftboy
function util:binary_split1

scoreboard players operation 5_1 binary = 0_0 binary
scoreboard players operation 6_1 binary = 1_0 binary
scoreboard players set 7_1 binary 0

function util:binary_join1
scoreboard players operation rom_bank craftboy = out binary
execute if score rom_bank craftboy matches 0 run scoreboard players set rom_bank crafboy 1

function mbc:swap_rom
