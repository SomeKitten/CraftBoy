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
#DAA
#GET_A
#GET_HI16
#LD
scoreboard players operation in binary = AF registers
function util:get_hi16
#LD
scoreboard players operation tmpA_DAA craftboy = out binary
#LD
scoreboard players operation in binary = tmpA_DAA craftboy
function util:binary_split0
scoreboard players set 4_0 binary 0
scoreboard players set 5_0 binary 0
scoreboard players set 6_0 binary 0
scoreboard players set 7_0 binary 0
function util:binary_join0
#LD
scoreboard players operation tmpA_F_DAA craftboy = out binary
scoreboard players set tmpOR_DAA craftboy 0
execute if score N flags matches 0 if score C flags matches 1 run function daa:aplusequalssixzero
execute if score tmpOR_DAA craftboy matches 0 if score N flags matches 0 if score tmpA_DAA craftboy matches 154.. run function daa:aplusequalssixzero
scoreboard players set tmpOR_DAA craftboy 0
execute if score N flags matches 0 if score H flags matches 1 run function daa:aplusequalssix
execute if score tmpOR_DAA craftboy matches 0 if score N flags matches 0 if score tmpA_F_DAA craftboy matches 10.. run function daa:aplusequalssix
execute if score N flags matches 1 if score C flags matches 1 run scoreboard players remove tmpA_DAA craftboy 96
execute if score N flags matches 1 if score H flags matches 1 run scoreboard players remove tmpA_DAA craftboy 6
execute if score tmpA_DAA craftboy matches 256.. run scoreboard players remove tmpA_DAA craftboy 256
execute if score tmpA_DAA craftboy matches ..-1 run scoreboard players add tmpA_DAA craftboy 256
scoreboard players set Z flags 0
execute if score tmpA_DAA craftboy matches 0 run scoreboard players set Z flags 1
#SET_A
#SET_HI16
#LD
scoreboard players operation in_reg binary = AF registers
#LD
scoreboard players operation in binary = tmpA_DAA craftboy
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
scoreboard players operation 7_0 binary = Z flags
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
scoreboard players operation 4_0 binary = C flags
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
