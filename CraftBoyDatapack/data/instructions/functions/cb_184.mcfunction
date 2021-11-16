#M_CYCLES
scoreboard players set m_cycles craftboy 2
#GET_B
#GET_HI16
#LD
scoreboard players operation in binary = BC registers
function util:get_hi16
#LD
scoreboard players operation tmp_RES craftboy = out binary
#RES
#SET_BIT
#LD
scoreboard players operation in binary = tmp_RES craftboy
function util:binary_split0
scoreboard players operation 7_0 binary = 0 constants
function util:binary_join0
#LD
scoreboard players operation tmp_RES craftboy = out binary
#SET_B
#SET_HI16
#LD
scoreboard players operation in_reg binary = BC registers
#LD
scoreboard players operation in binary = tmp_RES craftboy
function util:set_hi16
#LD
scoreboard players operation BC registers = out binary
