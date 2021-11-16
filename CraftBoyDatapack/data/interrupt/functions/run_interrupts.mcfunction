# local requested = memory.get(0xFF0F) / 65295
# local enabled = memory.get(0xFFFF) / 65535

scoreboard players operation in binary = 65295 io
function util:binary_split2
scoreboard players operation in binary = 65535 interrupt
function util:binary_split3

execute if score 0_2 binary matches 1 if score 0_3 binary matches 1 run function interrupt:run_vblank

scoreboard players operation in binary = 65295 io
function util:binary_split2
scoreboard players operation in binary = 65535 interrupt
function util:binary_split3

execute if score 1_2 binary matches 1 if score 1_3 binary matches 1 run function interrupt:run_lcdstatus

scoreboard players operation in binary = 65295 io
function util:binary_split2
scoreboard players operation in binary = 65535 interrupt
function util:binary_split3

execute if score 2_2 binary matches 1 if score 2_3 binary matches 1 run function interrupt:run_timer

scoreboard players operation in binary = 65295 io
function util:binary_split2
scoreboard players operation in binary = 65535 interrupt
function util:binary_split3

execute if score 3_2 binary matches 1 if score 3_3 binary matches 1 run function interrupt:run_serial

scoreboard players operation in binary = 65295 io
function util:binary_split2
scoreboard players operation in binary = 65535 interrupt
function util:binary_split3

execute if score 4_2 binary matches 1 if score 4_3 binary matches 1 run function interrupt:run_joypad
