#M_CYCLES
scoreboard players set m_cycles craftboy 3
function util:get_n
#LD
scoreboard players operation tmp_LD craftboy = n craftboy
#SET_(HL)
#WRITE8
#LD
scoreboard players operation index craftboy = HL registers
#LD
scoreboard players operation transfer craftboy = tmp_LD craftboy
function craftboy:write
