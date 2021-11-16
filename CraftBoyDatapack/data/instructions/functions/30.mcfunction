#M_CYCLES
scoreboard players set m_cycles craftboy 2
function util:get_n
#LD
scoreboard players operation tmp_LD craftboy = n craftboy
#SET_E
#SET_LO16
#LD
scoreboard players operation in_reg binary = DE registers
#LD
scoreboard players operation in binary = tmp_LD craftboy
function util:set_lo16
#LD
scoreboard players operation DE registers = out binary
