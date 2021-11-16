#M_CYCLES
scoreboard players set m_cycles craftboy 2
#INC16
scoreboard players add SP registers 1
execute if score SP registers matches 65536.. run scoreboard players remove SP registers 65536
