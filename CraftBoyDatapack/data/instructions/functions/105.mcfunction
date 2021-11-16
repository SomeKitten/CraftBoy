#M_CYCLES
scoreboard players set m_cycles craftboy 1
#GET_C
#GET_LO16
#LD
scoreboard players operation in binary = BC registers
function util:get_lo16
#LD
scoreboard players operation value craftboy = out binary
#SET_L
#SET_LO16
#LD
scoreboard players operation in_reg binary = HL registers
#LD
scoreboard players operation in binary = value craftboy
function util:set_lo16
#LD
scoreboard players operation HL registers = out binary
