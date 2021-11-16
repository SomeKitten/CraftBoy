#M_CYCLES
scoreboard players set m_cycles craftboy 2
#INC16
scoreboard players add HL registers 1
execute if score HL registers matches 65536.. run scoreboard players remove HL registers 65536
