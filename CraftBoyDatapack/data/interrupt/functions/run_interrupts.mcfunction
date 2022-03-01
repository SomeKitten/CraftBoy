scoreboard players operation in binary = 65295 io
function craftboy:util/binary_split2
scoreboard players operation in binary = 65535 interrupt
function craftboy:util/binary_split3

execute if score 0_2 binary matches 1 if score 0_3 binary matches 1 run function interrupt:run_vblank

execute if score 1_2 binary matches 1 if score 1_3 binary matches 1 run function interrupt:run_lcdstatus

execute if score 2_2 binary matches 1 if score 2_3 binary matches 1 run function interrupt:run_timer

execute if score 3_2 binary matches 1 if score 3_3 binary matches 1 run function interrupt:run_serial

execute if score 4_2 binary matches 1 if score 4_3 binary matches 1 run function interrupt:run_joypad
