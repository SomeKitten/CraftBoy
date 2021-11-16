#M_CYCLES
scoreboard players set m_cycles craftboy 2
#INC16
scoreboard players add BC registers 1
execute if score BC registers matches 65536.. run scoreboard players remove BC registers 65536
