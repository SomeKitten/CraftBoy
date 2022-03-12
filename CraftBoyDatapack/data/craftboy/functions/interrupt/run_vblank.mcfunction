scoreboard players set IME registers 0

function craftboy:interrupt/reset_vblank

scoreboard players operation in binary = PC registers
function craftboy:util/get_hi16
scoreboard players remove SP registers 1
execute if score SP registers matches ..-1 run scoreboard players add SP registers 65536
scoreboard players operation index craftboy = SP registers
scoreboard players operation transfer craftboy = out binary
function craftboy:write/all/main
scoreboard players operation in binary = PC registers
function craftboy:util/get_lo16
scoreboard players remove SP registers 1
execute if score SP registers matches ..-1 run scoreboard players add SP registers 65536
scoreboard players operation index craftboy = SP registers
scoreboard players operation transfer craftboy = out binary
function craftboy:write/all/main

scoreboard players set PC registers 64

scoreboard players set HALT registers 0
