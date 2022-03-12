scoreboard players operation bank1 craftboy = transfer craftboy
scoreboard players operation bank1 craftboy %= 32 constants

execute if score bank1 craftboy matches 0 run scoreboard players add bank1 craftboy 1

function craftboy:mbc1/update_memory
