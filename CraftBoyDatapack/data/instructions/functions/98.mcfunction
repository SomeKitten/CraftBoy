#M_CYCLES
scoreboard players set m_cycles craftboy 1
#GET_D
#GET_HI16
#LD
scoreboard players operation in binary = DE registers
function util:get_hi16
#LD
scoreboard players operation value craftboy = out binary
#SET_H
#SET_HI16
#LD
scoreboard players operation in_reg binary = HL registers
#LD
scoreboard players operation in binary = value craftboy
function util:set_hi16
#LD
scoreboard players operation HL registers = out binary
