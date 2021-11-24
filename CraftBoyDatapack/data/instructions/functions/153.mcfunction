#M_CYCLES
scoreboard players set m_cycles craftboy 1
#GET_FLAGS
function util:split_flags
#GET_C
#GET_LO16
#LD
scoreboard players operation in binary = BC registers
function util:get_lo16
#LD
scoreboard players operation value craftboy = out binary
#SBC_A
#GET_A
#GET_HI16
#LD
scoreboard players operation in binary = AF registers
function util:get_hi16
#LD
scoreboard players operation tmp_SBC_A craftboy = out binary
#LD
scoreboard players operation tmp2_SBC_A craftboy = tmp_SBC_A craftboy
scoreboard players operation tmp_SBC_A craftboy -= value craftboy
scoreboard players operation tmp_SBC_A craftboy -= C flags
#GET_LO8
#LD
scoreboard players operation in binary = tmp2_SBC_A craftboy
function util:get_lo8
#LD
scoreboard players operation tmp0_SBC craftboy = out binary
#GET_LO8
#LD
scoreboard players operation in binary = value craftboy
function util:get_lo8
#LD
scoreboard players operation tmp1_SBC craftboy = out binary
scoreboard players operation tmp1_SBC craftboy += C flags
scoreboard players set hflag_SBC craftboy 0
execute if score tmp1_SBC craftboy > tmp0_SBC craftboy run scoreboard players set hflag_SBC craftboy 1
scoreboard players set cflag_SBC craftboy 0
#LD
scoreboard players operation tmp3_SBC craftboy = value craftboy
scoreboard players operation tmp3_SBC craftboy += C flags
execute if score tmp3_SBC craftboy > tmp2_SBC_A craftboy run scoreboard players set cflag_SBC craftboy 1
execute if score tmp_SBC_A craftboy matches ..-1 run scoreboard players add tmp_SBC_A craftboy 256
scoreboard players set zflag_SBC craftboy 0
execute if score tmp_SBC_A craftboy matches 0 run scoreboard players set zflag_SBC craftboy 1
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
scoreboard players operation 7_0 binary = zflag_SBC craftboy
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
scoreboard players operation 6_0 binary = 1 constants
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
scoreboard players operation 5_0 binary = hflag_SBC craftboy
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
scoreboard players operation 4_0 binary = cflag_SBC craftboy
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
scoreboard players operation in binary = tmp_SBC_A craftboy
function util:set_hi16
#LD
scoreboard players operation AF registers = out binary
