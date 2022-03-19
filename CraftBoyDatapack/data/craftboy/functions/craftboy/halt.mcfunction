scoreboard players operation lcd_enable graphics = 65344 io
scoreboard players operation lcd_enable graphics /= 128 constants

execute if score lcd_enable graphics matches 1 run function craftboy:craftboy/halt_scancount

function craftboy:graphics/run

scoreboard players operation in binary = 65295 io
function craftboy:util/binary_split0
scoreboard players operation in binary = 65535 interrupt
function craftboy:util/binary_split1

execute if score 0_0 binary matches 1 if score 0_1 binary matches 1 run scoreboard players set HALT registers 0
execute if score 1_0 binary matches 1 if score 1_1 binary matches 1 run scoreboard players set HALT registers 0
execute if score 2_0 binary matches 1 if score 2_1 binary matches 1 run scoreboard players set HALT registers 0
execute if score 3_0 binary matches 1 if score 3_1 binary matches 1 run scoreboard players set HALT registers 0
execute if score 4_0 binary matches 1 if score 4_1 binary matches 1 run scoreboard players set HALT registers 0
execute if score 5_0 binary matches 1 if score 5_1 binary matches 1 run scoreboard players set HALT registers 0
execute if score 6_0 binary matches 1 if score 6_1 binary matches 1 run scoreboard players set HALT registers 0
execute if score 7_0 binary matches 1 if score 7_1 binary matches 1 run scoreboard players set HALT registers 0

scoreboard players set m_cycles craftboy 1
execute if score enable_timer craftboy matches 1 run function craftboy:timer/tick_fast