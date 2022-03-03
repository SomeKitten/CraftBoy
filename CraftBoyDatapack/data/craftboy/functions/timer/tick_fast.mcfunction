# DIV = 0xFF04 / 65284 io
# TIMA = 0xFF05 / 65285 io
# TMA = 0xFF06 / 65286 io
# TAC = 0xFF07 / 65287 io
# DIV / DIV timer

scoreboard players operation t_cycles craftboy = m_cycles craftboy
scoreboard players operation t_cycles craftboy *= 4 constants

scoreboard players operation DIV timer += t_cycles craftboy
scoreboard players operation DIV timer %= 65536 constants

scoreboard players operation 65284 io = DIV timer
scoreboard players operation 65284 io /= 256 constants

scoreboard players operation enable timer = 65287 io

scoreboard players operation enable timer /= 4 constants
scoreboard players operation enable timer %= 2 constants

execute if score enable timer matches 1 run function craftboy:timer/inc_tima
