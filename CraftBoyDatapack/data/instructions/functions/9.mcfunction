#ADD
#LD
scoreboard players operation tmp2_ADD craftboy = HL registers
#LD
scoreboard players operation tmp3_ADD craftboy = BC registers
scoreboard players operation HL registers += BC registers
#GET_LO16
#GET_HI16
#LD
scoreboard players operation in binary = tmp2_ADD craftboy
function util:get_hi16
#GET_LO8
#LD
scoreboard players operation in binary = out binary
function util:get_lo8
scoreboard players operation out binary *= 256 constants
#LD
scoreboard players operation tmp_LO16_12 craftboy = out binary
#GET_LO16
#LD
scoreboard players operation in binary = tmp2_ADD craftboy
function util:get_lo16
scoreboard players operation out binary += tmp_LO16_12 craftboy
#LD
scoreboard players operation tmp0_ADD craftboy = out binary
#GET_LO16
#GET_HI16
#LD
scoreboard players operation in binary = tmp3_ADD craftboy
function util:get_hi16
#GET_LO8
#LD
scoreboard players operation in binary = out binary
function util:get_lo8
scoreboard players operation out binary *= 256 constants
#LD
scoreboard players operation tmp_LO16_12 craftboy = out binary
#GET_LO16
#LD
scoreboard players operation in binary = tmp3_ADD craftboy
function util:get_lo16
scoreboard players operation out binary += tmp_LO16_12 craftboy
#LD
scoreboard players operation tmp1_ADD craftboy = out binary
scoreboard players operation tmp0_ADD craftboy += tmp1_ADD craftboy
scoreboard players set hflag_ADD craftboy 0
execute if score tmp0_ADD craftboy matches 4096.. run scoreboard players set hflag_ADD craftboy 1
scoreboard players set cflag_ADD craftboy 0
execute if score HL registers matches 65536.. run scoreboard players set cflag_ADD craftboy 1
execute if score HL registers matches 65536.. run scoreboard players remove HL registers 65536
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
scoreboard players operation 5_0 binary = hflag_ADD craftboy
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
scoreboard players operation 4_0 binary = cflag_ADD craftboy
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
