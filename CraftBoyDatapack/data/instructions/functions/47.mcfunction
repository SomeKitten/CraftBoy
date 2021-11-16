#CPL
#GET_A
#GET_HI16
#LD
scoreboard players operation in binary = AF registers
function util:get_hi16
#LD
scoreboard players operation in binary = out binary
function util:binary_split0
#INV_BIT
scoreboard players operation tmp_INV binary = 1 constants
scoreboard players operation tmp_INV binary -= 0_0 binary
scoreboard players operation 0_0 binary = tmp_INV binary
#INV_BIT
scoreboard players operation tmp_INV binary = 1 constants
scoreboard players operation tmp_INV binary -= 1_0 binary
scoreboard players operation 1_0 binary = tmp_INV binary
#INV_BIT
scoreboard players operation tmp_INV binary = 1 constants
scoreboard players operation tmp_INV binary -= 2_0 binary
scoreboard players operation 2_0 binary = tmp_INV binary
#INV_BIT
scoreboard players operation tmp_INV binary = 1 constants
scoreboard players operation tmp_INV binary -= 3_0 binary
scoreboard players operation 3_0 binary = tmp_INV binary
#INV_BIT
scoreboard players operation tmp_INV binary = 1 constants
scoreboard players operation tmp_INV binary -= 4_0 binary
scoreboard players operation 4_0 binary = tmp_INV binary
#INV_BIT
scoreboard players operation tmp_INV binary = 1 constants
scoreboard players operation tmp_INV binary -= 5_0 binary
scoreboard players operation 5_0 binary = tmp_INV binary
#INV_BIT
scoreboard players operation tmp_INV binary = 1 constants
scoreboard players operation tmp_INV binary -= 6_0 binary
scoreboard players operation 6_0 binary = tmp_INV binary
#INV_BIT
scoreboard players operation tmp_INV binary = 1 constants
scoreboard players operation tmp_INV binary -= 7_0 binary
scoreboard players operation 7_0 binary = tmp_INV binary
function util:binary_join0
#SET_A
#SET_HI16
#LD
scoreboard players operation in_reg binary = AF registers
#LD
scoreboard players operation in binary = out binary
function util:set_hi16
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
scoreboard players operation 5_0 binary = 1 constants
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
