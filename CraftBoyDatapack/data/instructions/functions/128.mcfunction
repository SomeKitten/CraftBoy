#M_CYCLES
scoreboard players set m_cycles craftboy 1
#GET_FLAGS
#GET_LO16
#LD
scoreboard players operation in binary = AF registers
function util:get_lo16
#LD
scoreboard players operation in binary = out binary
function util:binary_split0
#LD
scoreboard players operation Z flags = 7_0 binary
#LD
scoreboard players operation N flags = 6_0 binary
#LD
scoreboard players operation H flags = 5_0 binary
#LD
scoreboard players operation C flags = 4_0 binary
#GET_B
#GET_HI16
#LD
scoreboard players operation in binary = BC registers
function util:get_hi16
#LD
scoreboard players operation value craftboy = out binary
#ADD_A
#GET_A
#GET_HI16
#LD
scoreboard players operation in binary = AF registers
function util:get_hi16
#LD
scoreboard players operation tmp0_ADD_A craftboy = out binary
#LD
scoreboard players operation tmp_ADD_A craftboy = out binary
scoreboard players operation tmp_ADD_A craftboy += value craftboy
#GET_LO8
#LD
scoreboard players operation in binary = tmp0_ADD_A craftboy
function util:get_lo8
#LD
scoreboard players operation tmp0_ADD_A craftboy = out binary
#GET_LO8
#LD
scoreboard players operation in binary = value craftboy
function util:get_lo8
#LD
scoreboard players operation tmp1_ADD_A craftboy = out binary
scoreboard players operation tmp0_ADD_A craftboy += tmp1_ADD_A craftboy
scoreboard players set hflag_ADD_A craftboy 0
execute if score tmp0_ADD_A craftboy matches 16.. run scoreboard players set hflag_ADD_A craftboy 1
scoreboard players set cflag_ADD_A craftboy 0
execute if score tmp_ADD_A craftboy matches 256.. run scoreboard players set cflag_ADD_A craftboy 1
execute if score tmp_ADD_A craftboy matches 256.. run scoreboard players remove tmp_ADD_A craftboy 256
scoreboard players set zflag_ADD_A craftboy 0
execute if score tmp_ADD_A craftboy matches 0 run scoreboard players set zflag_ADD_A craftboy 1
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
scoreboard players operation 7_0 binary = zflag_ADD_A craftboy
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
scoreboard players operation 5_0 binary = hflag_ADD_A craftboy
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
scoreboard players operation 4_0 binary = cflag_ADD_A craftboy
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
#SET_A
#SET_HI16
#LD
scoreboard players operation in_reg binary = AF registers
#LD
scoreboard players operation in binary = tmp_ADD_A craftboy
function util:set_hi16
#LD
scoreboard players operation AF registers = out binary
