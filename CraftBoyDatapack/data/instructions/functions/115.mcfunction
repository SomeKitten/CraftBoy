#M_CYCLES
scoreboard players set m_cycles craftboy 2
#GET_E
#GET_LO16
#LD
scoreboard players operation in binary = DE registers
function util:get_lo16
#LD
scoreboard players operation value craftboy = out binary
#SET_(HL)
#WRITE8
#LD
scoreboard players operation index craftboy = HL registers
#LD
scoreboard players operation transfer craftboy = value craftboy
function craftboy:write
