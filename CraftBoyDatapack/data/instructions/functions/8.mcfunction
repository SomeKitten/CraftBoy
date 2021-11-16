function util:get_nn
#WRITE16
#LD
scoreboard players operation tmp_WRITE16 craftboy = nn craftboy
#GET_LO16
#LD
scoreboard players operation in binary = SP registers
function util:get_lo16
#WRITE8
#LD
scoreboard players operation index craftboy = tmp_WRITE16 craftboy
#LD
scoreboard players operation transfer craftboy = out binary
function craftboy:write
#INC16
scoreboard players add tmp_WRITE16 craftboy 1
execute if score tmp_WRITE16 craftboy matches 65536.. run scoreboard players remove tmp_WRITE16 craftboy 65536
#GET_HI16
#LD
scoreboard players operation in binary = SP registers
function util:get_hi16
#WRITE8
#LD
scoreboard players operation index craftboy = tmp_WRITE16 craftboy
#LD
scoreboard players operation transfer craftboy = out binary
function craftboy:write
