#M_CYCLES
scoreboard players set m_cycles craftboy 3
#POP
#READ8
#LD
scoreboard players operation index craftboy = SP registers
function craftboy:read
#INC16
scoreboard players add SP registers 1
execute if score SP registers matches 65536.. run scoreboard players remove SP registers 65536
#SET_LO16
#LD
scoreboard players operation in_reg binary = BC registers
#LD
scoreboard players operation in binary = transfer craftboy
function util:set_lo16
#LD
scoreboard players operation BC registers = out binary
#READ8
#LD
scoreboard players operation index craftboy = SP registers
function craftboy:read
#INC16
scoreboard players add SP registers 1
execute if score SP registers matches 65536.. run scoreboard players remove SP registers 65536
#SET_HI16
#LD
scoreboard players operation in_reg binary = BC registers
#LD
scoreboard players operation in binary = transfer craftboy
function util:set_hi16
#LD
scoreboard players operation BC registers = out binary
