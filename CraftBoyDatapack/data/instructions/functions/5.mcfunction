#M_CYCLES
scoreboard players set m_cycles craftboy 1
#GET_B
#GET_HI16
#LD
scoreboard players operation in binary = BC registers
function util:get_hi16
#LD
scoreboard players operation value craftboy = out binary
#DEC8
scoreboard players remove value craftboy 1
execute if score value craftboy matches ..-1 run scoreboard players add value craftboy 256
#GET_LO8
#LD
scoreboard players operation in binary = value craftboy
function util:get_lo8
scoreboard players set hflag_DEC craftboy 0
execute if score out binary matches 15 run scoreboard players set hflag_DEC craftboy 1
scoreboard players set zflag_DEC craftboy 0
execute if score value craftboy matches 0 run scoreboard players set zflag_DEC craftboy 1
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
scoreboard players operation 7_0 binary = zflag_DEC craftboy
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
scoreboard players operation 5_0 binary = hflag_DEC craftboy
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
#SET_B
#SET_HI16
#LD
scoreboard players operation in_reg binary = BC registers
#LD
scoreboard players operation in binary = value craftboy
function util:set_hi16
#LD
scoreboard players operation BC registers = out binary
