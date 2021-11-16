#M_CYCLES
scoreboard players set m_cycles craftboy 2
#GET_C
#GET_LO16
#LD
scoreboard players operation in binary = BC registers
function util:get_lo16
#LD
scoreboard players operation value craftboy = out binary
#ADD_FF00
scoreboard players add value craftboy 65280
#GET_A
#GET_HI16
#LD
scoreboard players operation in binary = AF registers
function util:get_hi16
#WRITE8
#LD
scoreboard players operation index craftboy = value craftboy
#LD
scoreboard players operation transfer craftboy = out binary
function craftboy:write
