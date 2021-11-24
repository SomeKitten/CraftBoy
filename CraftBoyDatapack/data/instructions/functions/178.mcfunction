#M_CYCLES
scoreboard players set m_cycles craftboy 1
#GET_FLAGS
function util:split_flags
#GET_D
#GET_HI16
#LD
scoreboard players operation in binary = DE registers
function util:get_hi16
#LD
scoreboard players operation value craftboy = out binary
#OR_A
#GET_A
#GET_HI16
#LD
scoreboard players operation in binary = AF registers
function util:get_hi16
#LD
scoreboard players operation in binary = out binary
function util:binary_split0
#LD
scoreboard players operation in binary = value craftboy
function util:binary_split1
execute if score 0_0 binary matches 0 if score 0_1 binary matches 0 run scoreboard players set 0_0 binary 0
execute if score 0_1 binary matches 1 run scoreboard players set 0_0 binary 1
execute if score 1_0 binary matches 0 if score 1_1 binary matches 0 run scoreboard players set 1_0 binary 0
execute if score 1_1 binary matches 1 run scoreboard players set 1_0 binary 1
execute if score 2_0 binary matches 0 if score 2_1 binary matches 0 run scoreboard players set 2_0 binary 0
execute if score 2_1 binary matches 1 run scoreboard players set 2_0 binary 1
execute if score 3_0 binary matches 0 if score 3_1 binary matches 0 run scoreboard players set 3_0 binary 0
execute if score 3_1 binary matches 1 run scoreboard players set 3_0 binary 1
execute if score 4_0 binary matches 0 if score 4_1 binary matches 0 run scoreboard players set 4_0 binary 0
execute if score 4_1 binary matches 1 run scoreboard players set 4_0 binary 1
execute if score 5_0 binary matches 0 if score 5_1 binary matches 0 run scoreboard players set 5_0 binary 0
execute if score 5_1 binary matches 1 run scoreboard players set 5_0 binary 1
execute if score 6_0 binary matches 0 if score 6_1 binary matches 0 run scoreboard players set 6_0 binary 0
execute if score 6_1 binary matches 1 run scoreboard players set 6_0 binary 1
execute if score 7_0 binary matches 0 if score 7_1 binary matches 0 run scoreboard players set 7_0 binary 0
execute if score 7_1 binary matches 1 run scoreboard players set 7_0 binary 1
function util:binary_join0
scoreboard players set zflag_OR_A craftboy 0
execute if score out binary matches 0 run scoreboard players set zflag_OR_A craftboy 1
#SET_A
#SET_HI16
#LD
scoreboard players operation in_reg binary = AF registers
#LD
scoreboard players operation in binary = out binary
function util:set_hi16
#LD
scoreboard players operation AF registers = out binary
#SET_FLAG_Z
#GET_F
#GET_LO16
#LD
scoreboard players operation in binary = AF registers
function util:get_lo16
#LD
scoreboard players operation tmp_Z craftboy = out binary
#SET_BIT
#LD
scoreboard players operation in binary = tmp_Z craftboy
function util:binary_split0
scoreboard players operation 7_0 binary = zflag_OR_A craftboy
function util:binary_join0
#LD
scoreboard players operation tmp_Z craftboy = out binary
#SET_F
#SET_LO16
#LD
scoreboard players operation in_reg binary = AF registers
#LD
scoreboard players operation in binary = tmp_Z craftboy
function util:set_lo16
#LD
scoreboard players operation AF registers = out binary
#SET_FLAG_N
#GET_F
#GET_LO16
#LD
scoreboard players operation in binary = AF registers
function util:get_lo16
#LD
scoreboard players operation tmp_N craftboy = out binary
#SET_BIT
#LD
scoreboard players operation in binary = tmp_N craftboy
function util:binary_split0
scoreboard players operation 6_0 binary = 0 constants
function util:binary_join0
#LD
scoreboard players operation tmp_N craftboy = out binary
#SET_F
#SET_LO16
#LD
scoreboard players operation in_reg binary = AF registers
#LD
scoreboard players operation in binary = tmp_N craftboy
function util:set_lo16
#LD
scoreboard players operation AF registers = out binary
#SET_FLAG_H
#GET_F
#GET_LO16
#LD
scoreboard players operation in binary = AF registers
function util:get_lo16
#LD
scoreboard players operation tmp_H craftboy = out binary
#SET_BIT
#LD
scoreboard players operation in binary = tmp_H craftboy
function util:binary_split0
scoreboard players operation 5_0 binary = 0 constants
function util:binary_join0
#LD
scoreboard players operation tmp_H craftboy = out binary
#SET_F
#SET_LO16
#LD
scoreboard players operation in_reg binary = AF registers
#LD
scoreboard players operation in binary = tmp_H craftboy
function util:set_lo16
#LD
scoreboard players operation AF registers = out binary
#SET_FLAG_C
#GET_F
#GET_LO16
#LD
scoreboard players operation in binary = AF registers
function util:get_lo16
#LD
scoreboard players operation tmp_C craftboy = out binary
#SET_BIT
#LD
scoreboard players operation in binary = tmp_C craftboy
function util:binary_split0
scoreboard players operation 4_0 binary = 0 constants
function util:binary_join0
#LD
scoreboard players operation tmp_C craftboy = out binary
#SET_F
#SET_LO16
#LD
scoreboard players operation in_reg binary = AF registers
#LD
scoreboard players operation in binary = tmp_C craftboy
function util:set_lo16
#LD
scoreboard players operation AF registers = out binary
