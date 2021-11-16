function util:get_nn
#READ8
#LD
scoreboard players operation index craftboy = nn craftboy
function craftboy:read
#SET_HI16
#LD
scoreboard players operation in_reg binary = AF registers
#LD
scoreboard players operation in binary = transfer craftboy
function util:set_hi16
#LD
scoreboard players operation AF registers = out binary
