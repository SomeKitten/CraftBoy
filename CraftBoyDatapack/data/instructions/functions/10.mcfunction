#READ8
#LD
scoreboard players operation index craftboy = BC registers
function craftboy:read
#SET_A
#SET_HI16
#LD
scoreboard players operation in_reg binary = AF registers
#LD
scoreboard players operation in binary = transfer craftboy
function util:set_hi16
#LD
scoreboard players operation AF registers = out binary
