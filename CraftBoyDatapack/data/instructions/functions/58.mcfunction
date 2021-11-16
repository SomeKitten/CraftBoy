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
#DEC16
scoreboard players remove HL registers 1
execute if score HL registers matches ..-1 run scoreboard players add HL registers 65536
