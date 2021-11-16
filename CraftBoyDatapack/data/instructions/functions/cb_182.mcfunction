#M_CYCLES
scoreboard players set m_cycles craftboy 4
#GET_(HL)
#READ8
#LD
scoreboard players operation index craftboy = HL registers
function craftboy:read
#LD
scoreboard players operation out binary = transfer craftboy
#LD
scoreboard players operation tmp_RES craftboy = out binary
#RES
#SET_BIT
#LD
scoreboard players operation in binary = tmp_RES craftboy
function util:binary_split0
scoreboard players operation 6_0 binary = 0 constants
function util:binary_join0
#LD
scoreboard players operation tmp_RES craftboy = out binary
#SET_(HL)
#WRITE8
#LD
scoreboard players operation index craftboy = HL registers
#LD
scoreboard players operation transfer craftboy = tmp_RES craftboy
function craftboy:write
