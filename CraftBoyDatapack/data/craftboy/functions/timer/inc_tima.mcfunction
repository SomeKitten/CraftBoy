scoreboard players operation bit_position timer = 65287 io
scoreboard players operation bit_position timer %= 4 constants

scoreboard players operation prev_bit timer = bit timer
execute if score bit_position timer matches 0 run function craftboy:timer/bit_9
execute if score bit_position timer matches 1 run function craftboy:timer/bit_3
execute if score bit_position timer matches 2 run function craftboy:timer/bit_5
execute if score bit_position timer matches 3 run function craftboy:timer/bit_7

scoreboard players operation inc timer = bit timer
scoreboard players operation inc timer -= prev_bit timer

execute if score inc timer matches 1.. run scoreboard players operation 65285 io += inc timer

execute if score 65285 io matches 256.. run function craftboy:interrupt/set_timer
execute if score 65285 io matches 256.. run scoreboard players operation 65285 io = 65286 io
