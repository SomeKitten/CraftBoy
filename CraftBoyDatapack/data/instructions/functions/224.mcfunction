#M_CYCLES
scoreboard players set m_cycles craftboy 3
function util:get_n
#GET_A
#GET_HI16
#LD
scoreboard players operation in binary = AF registers
function util:get_hi16
#ADD_FF00
scoreboard players add n craftboy 65280
#WRITE8
#LD
scoreboard players operation index craftboy = n craftboy
#LD
scoreboard players operation transfer craftboy = out binary
function craftboy:write
