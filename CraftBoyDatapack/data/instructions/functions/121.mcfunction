#M_CYCLES
scoreboard players set m_cycles craftboy 1
#GET_C
#GET_LO16
#LD
scoreboard players operation in binary = BC registers
function util:get_lo16
#LD
scoreboard players operation value craftboy = out binary
#SET_A
#SET_HI16
#LD
scoreboard players operation in_reg binary = AF registers
#LD
scoreboard players operation in binary = value craftboy
function util:set_hi16
#LD
scoreboard players operation AF registers = out binary
