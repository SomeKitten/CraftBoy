scoreboard players operation index craftboy = PC registers
function craftboy:read/all/main
scoreboard players operation d craftboy = transfer craftboy
execute if score d craftboy >= 128 constants run scoreboard players remove d craftboy 256

scoreboard players add PC registers 1
