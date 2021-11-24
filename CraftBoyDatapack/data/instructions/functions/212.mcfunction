#GET_FLAGS
function util:split_flags
#CALLC
execute if score C flags matches 0 run function instructions:205
execute unless score C flags matches 0 run scoreboard players add PC registers 2
