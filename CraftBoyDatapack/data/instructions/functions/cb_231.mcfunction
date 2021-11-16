#M_CYCLES
scoreboard players set m_cycles craftboy 2
#GET_A
#GET_HI16
#LD
scoreboard players operation in binary = AF registers
function util:get_hi16
#LD
scoreboard players operation tmp_SET craftboy = out binary
#SET
#SET_BIT
#LD
scoreboard players operation in binary = tmp_SET craftboy
function util:binary_split0
scoreboard players operation 4_0 binary = 1 constants
function util:binary_join0
#LD
scoreboard players operation tmp_SET craftboy = out binary
#SET_A
#SET_HI16
#LD
scoreboard players operation in_reg binary = AF registers
#LD
scoreboard players operation in binary = tmp_SET craftboy
function util:set_hi16
#LD
scoreboard players operation AF registers = out binary
