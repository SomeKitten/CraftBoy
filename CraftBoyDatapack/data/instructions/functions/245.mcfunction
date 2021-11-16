#M_CYCLES
scoreboard players set m_cycles craftboy 4
#PUSH
#GET_HI16
#LD
scoreboard players operation in binary = AF registers
function util:get_hi16
#DEC16
scoreboard players remove SP registers 1
execute if score SP registers matches ..-1 run scoreboard players add SP registers 65536
#WRITE8
#LD
scoreboard players operation index craftboy = SP registers
#LD
scoreboard players operation transfer craftboy = out binary
function craftboy:write
#GET_LO16
#LD
scoreboard players operation in binary = AF registers
function util:get_lo16
#DEC16
scoreboard players remove SP registers 1
execute if score SP registers matches ..-1 run scoreboard players add SP registers 65536
#WRITE8
#LD
scoreboard players operation index craftboy = SP registers
#LD
scoreboard players operation transfer craftboy = out binary
function craftboy:write
