scoreboard players operation index craftboy = PC registers
function craftboy:craftboy/read
scoreboard players operation lo craftboy = transfer craftboy
scoreboard players add PC registers 1

scoreboard players operation index craftboy = PC registers
function craftboy:craftboy/read
scoreboard players operation hi craftboy = transfer craftboy
scoreboard players add PC registers 1

scoreboard players operation hi craftboy *= 256 constants

scoreboard players set nn craftboy 0
scoreboard players operation nn craftboy += lo craftboy
scoreboard players operation nn craftboy += hi craftboy
