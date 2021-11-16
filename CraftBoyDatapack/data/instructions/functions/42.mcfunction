#M_CYCLES
scoreboard players set m_cycles craftboy 2
#READ8
#LD
scoreboard players operation index craftboy = HL registers
function craftboy:read
#SET_A
#SET_HI16
#LD
scoreboard players operation in_reg binary = AF registers
#LD
scoreboard players operation in binary = transfer craftboy
function util:set_hi16
#LD
scoreboard players operation AF registers = out binary
#INC16
scoreboard players add HL registers 1
execute if score HL registers matches 65536.. run scoreboard players remove HL registers 65536
