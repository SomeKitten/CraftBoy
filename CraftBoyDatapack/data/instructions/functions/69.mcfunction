#M_CYCLES
scoreboard players set m_cycles craftboy 1
#GET_L
#GET_LO16
#LD
scoreboard players operation in binary = HL registers
function util:get_lo16
#LD
scoreboard players operation value craftboy = out binary
#SET_B
#SET_HI16
#LD
scoreboard players operation in_reg binary = BC registers
#LD
scoreboard players operation in binary = value craftboy
function util:set_hi16
#LD
scoreboard players operation BC registers = out binary
