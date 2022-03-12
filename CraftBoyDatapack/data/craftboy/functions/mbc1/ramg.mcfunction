scoreboard players operation tmp craftboy = transfer craftboy
scoreboard players operation tmp craftboy %= 16 constants

scoreboard players set ram_gate craftboy 0
execute if score tmp craftboy matches 10 run scoreboard players set ram_gate craftboy 1

function craftboy:mbc1/update_memory
