#GET_C
#GET_LO16
#LD
scoreboard players operation in binary = BC registers
function util:get_lo16
#LD
scoreboard players operation value craftboy = out binary
#ADD_FF00
scoreboard players add value craftboy 65280
#READ8
#LD
scoreboard players operation index craftboy = value craftboy
function craftboy:read
#SET_HI16
#LD
scoreboard players operation in_reg binary = AF registers
#LD
scoreboard players operation in binary = transfer craftboy
function util:set_hi16
#LD
scoreboard players operation AF registers = out binary
