scoreboard players operation in binary = transfer craftboy
function util:binary_split5

execute if score 5_5 binary matches 0 run scoreboard players operation 65280 io = buttons craftboy
execute if score 4_5 binary matches 0 run scoreboard players operation 65280 io = dpad craftboy
execute if score index craftboy matches 65281 run scoreboard players operation 65281 io = transfer craftboy
execute if score index craftboy matches 65282 run scoreboard players operation 65282 io = transfer craftboy
execute if score index craftboy matches 65283 run scoreboard players operation 65283 io = transfer craftboy
