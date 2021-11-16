#M_CYCLES
scoreboard players set m_cycles craftboy 2
#INC16
scoreboard players add DE registers 1
execute if score DE registers matches 65536.. run scoreboard players remove DE registers 65536
