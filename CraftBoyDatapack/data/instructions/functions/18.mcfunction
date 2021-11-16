#M_CYCLES
scoreboard players set m_cycles craftboy 2
#GET_A
#GET_HI16
#LD
scoreboard players operation in binary = AF registers
function util:get_hi16
#WRITE8
#LD
scoreboard players operation index craftboy = DE registers
#LD
scoreboard players operation transfer craftboy = out binary
function craftboy:write
