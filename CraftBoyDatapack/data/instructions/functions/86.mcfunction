#M_CYCLES
scoreboard players set m_cycles craftboy 2
#GET_(HL)
#READ8
#LD
scoreboard players operation index craftboy = HL registers
function craftboy:read
#LD
scoreboard players operation out binary = transfer craftboy
#LD
scoreboard players operation value craftboy = out binary
#SET_D
#SET_HI16
#LD
scoreboard players operation in_reg binary = DE registers
#LD
scoreboard players operation in binary = value craftboy
function util:set_hi16
#LD
scoreboard players operation DE registers = out binary
