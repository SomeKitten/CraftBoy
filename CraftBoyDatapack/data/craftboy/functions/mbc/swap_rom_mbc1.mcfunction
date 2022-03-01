scoreboard players operation bank craftboy = rom_bank craftboy

execute if score 328 rom matches 5..6 run scoreboard players operation in binary = rom_bank craftboy
execute if score 328 rom matches 5..6 run function craftboy:util/binary_split0
execute if score 328 rom matches 5..6 run scoreboard players operation in binary = ram_bank craftboy
execute if score 328 rom matches 5..6 run function craftboy:util/binary_split1
execute if score 328 rom matches 5..6 run scoreboard players operation 5_0 binary = 0_1 binary
execute if score 328 rom matches 6 run scoreboard players operation 6_0 binary = 1_1 binary
execute if score 328 rom matches 5..6 run function craftboy:util/binary_join0
execute if score 328 rom matches 5..6 run scoreboard players operation bank craftboy = out binary

function craftboy:mbc/swap_rom