#M_CYCLES
scoreboard players set m_cycles craftboy 1
#GET_FLAGS
function util:split_flags
#GET_L
#GET_LO16
#LD
scoreboard players operation in binary = HL registers
function util:get_lo16
#LD
scoreboard players operation tmp_ROT craftboy = out binary
#SWAP
#GET_HI8
#LD
scoreboard players operation in binary = tmp_ROT craftboy
function util:get_hi8
#LD
scoreboard players operation tmp_SWAP craftboy = out binary
#GET_LO8
#LD
scoreboard players operation in binary = tmp_ROT craftboy
function util:get_lo8
#LD
scoreboard players operation tmp_ROT craftboy = out binary
scoreboard players operation tmp_ROT craftboy *= 16 constants
scoreboard players operation tmp_ROT craftboy += tmp_SWAP craftboy
scoreboard players set zflag_SWAP craftboy 0
execute if score tmp_ROT craftboy matches 0 run scoreboard players set zflag_SWAP craftboy 1
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
scoreboard players operation 7_0 binary = zflag_SWAP craftboy
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
#SET_L
#SET_LO16
#LD
scoreboard players operation in_reg binary = HL registers
#LD
scoreboard players operation in binary = tmp_ROT craftboy
function util:set_lo16
#LD
scoreboard players operation HL registers = out binary
