scoreboard players operation t_cycles craftboy = m_cycles craftboy
scoreboard players operation t_cycles craftboy *= 4 constants
scoreboard players operation scancount graphics -= t_cycles craftboy
execute if score scancount graphics matches ..0 run function craftboy:graphics/line
