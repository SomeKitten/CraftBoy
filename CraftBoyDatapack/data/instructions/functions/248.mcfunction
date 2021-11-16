function util:get_d
#LD
scoreboard players operation tmp0 craftboy = SP registers
#ADD
#LD
scoreboard players operation tmp2_ADD_SPD craftboy = tmp0 craftboy
#LD
scoreboard players operation tmp3_ADD_SPD craftboy = d craftboy
scoreboard players operation tmp0 craftboy += d craftboy
#GET_LO8
#LD
scoreboard players operation in binary = tmp2_ADD_SPD craftboy
function util:get_lo8
#LD
scoreboard players operation tmp0_ADD_SPD craftboy = out binary
#GET_LO8
#LD
scoreboard players operation in binary = tmp3_ADD_SPD craftboy
function util:get_lo8
#LD
scoreboard players operation tmp1_ADD_SPD craftboy = out binary
scoreboard players operation tmp0_ADD_SPD craftboy += tmp1_ADD_SPD craftboy
scoreboard players set hflag_ADD_SPD craftboy 0
execute if score tmp0_ADD_SPD craftboy matches 16.. run scoreboard players set hflag_ADD_SPD craftboy 1
#GET_LO16
#LD
scoreboard players operation in binary = tmp2_ADD_SPD craftboy
function util:get_lo16
#LD
scoreboard players operation tmp4_ADD_SPD craftboy = out binary
#GET_LO16
#LD
scoreboard players operation in binary = tmp3_ADD_SPD craftboy
function util:get_lo16
#LD
scoreboard players operation tmp5_ADD_SPD craftboy = out binary
scoreboard players operation tmp4_ADD_SPD craftboy += tmp5_ADD_SPD craftboy
scoreboard players set cflag_ADD_SPD craftboy 0
execute if score tmp4_ADD_SPD craftboy matches 256.. run scoreboard players set cflag_ADD_SPD craftboy 1
execute if score tmp0 craftboy matches 65536.. run scoreboard players remove tmp0 craftboy 65536
execute if score tmp0 craftboy matches ..-1 run scoreboard players add tmp0 craftboy 65536
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
scoreboard players operation 7_0 binary = 0 constants
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
scoreboard players operation 5_0 binary = hflag_ADD_SPD craftboy
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
scoreboard players operation 4_0 binary = cflag_ADD_SPD craftboy
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
#LD
scoreboard players operation HL registers = tmp0 craftboy
