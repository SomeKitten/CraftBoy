scoreboard players operation index craftboy = PC registers
function craftboy:read/all/main
scoreboard players operation nn_lo craftboy = transfer craftboy
scoreboard players operation nn craftboy = transfer craftboy

scoreboard players add PC registers 1


scoreboard players operation index craftboy = PC registers
function craftboy:read/all/main
scoreboard players operation nn_hi craftboy = transfer craftboy
scoreboard players operation transfer craftboy *= 256 constants
scoreboard players operation nn craftboy += transfer craftboy

scoreboard players add PC registers 1
