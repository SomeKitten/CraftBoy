scoreboard players operation in binary = 65295 io
function craftboy:util/binary_split4
scoreboard players set 1_4 binary 1
function craftboy:util/binary_join4
execute if score lcd_enable graphics matches 1 run scoreboard players operation 65295 io = out binary
