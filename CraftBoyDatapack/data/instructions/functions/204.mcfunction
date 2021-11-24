#GET_FLAGS
function util:split_flags
#CALLC
execute if score Z flags matches 1 run function instructions:205
execute unless score Z flags matches 1 run scoreboard players add PC registers 2
