#M_CYCLES
scoreboard players set m_cycles craftboy 1
#GET_B
#GET_HI16
#LD
scoreboard players operation in binary = BC registers
function util:get_hi16
#LD
scoreboard players operation value craftboy = out binary
#SET_E
#SET_LO16
#LD
scoreboard players operation in_reg binary = DE registers
#LD
scoreboard players operation in binary = value craftboy
function util:set_lo16
#LD
scoreboard players operation DE registers = out binary
