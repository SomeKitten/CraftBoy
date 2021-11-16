#M_CYCLES
scoreboard players set m_cycles craftboy 3
function util:get_n
#ADD_FF00
scoreboard players add n craftboy 65280
#READ8
#LD
scoreboard players operation index craftboy = n craftboy
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
