#M_CYCLES
scoreboard players set m_cycles craftboy 2
function util:get_n
#LD
scoreboard players operation tmp_LD craftboy = n craftboy
#SET_A
#SET_HI16
#LD
scoreboard players operation in_reg binary = AF registers
#LD
scoreboard players operation in binary = tmp_LD craftboy
function util:set_hi16
#LD
scoreboard players operation AF registers = out binary
