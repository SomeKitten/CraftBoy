#M_CYCLES
scoreboard players set m_cycles craftboy 4
function util:get_nn
#GET_A
#GET_HI16
#LD
scoreboard players operation in binary = AF registers
function util:get_hi16
#WRITE8
#LD
scoreboard players operation index craftboy = nn craftboy
#LD
scoreboard players operation transfer craftboy = out binary
function craftboy:write
