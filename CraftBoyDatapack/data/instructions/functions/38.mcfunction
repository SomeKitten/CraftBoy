#M_CYCLES
scoreboard players set m_cycles craftboy 2
function util:get_n
#LD
scoreboard players operation tmp_LD craftboy = n craftboy
#SET_H
#SET_HI16
#LD
scoreboard players operation in_reg binary = HL registers
#LD
scoreboard players operation in binary = tmp_LD craftboy
function util:set_hi16
#LD
scoreboard players operation HL registers = out binary
