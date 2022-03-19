function craftboy:interrupt/lcd_status

scoreboard players operation lcd_enable graphics = 65344 io
scoreboard players operation lcd_enable graphics /= 128 constants

# TODO blank on LCD disable
# TODO put in one function
execute if score lcd_enable graphics matches 1 run scoreboard players operation t_cycles craftboy = m_cycles craftboy
execute if score lcd_enable graphics matches 1 run scoreboard players operation t_cycles craftboy *= 4 constants
execute if score lcd_enable graphics matches 1 run scoreboard players operation scancount graphics -= t_cycles craftboy

execute if score lcd_enable graphics matches 1 if score scancount graphics matches ..0 run function craftboy:graphics/line

# TODO make execute only once when disabled
# TODO put in one function
execute if score lcd_enable graphics matches 0 run scoreboard players operation 65345 io /= 4 constants
execute if score lcd_enable graphics matches 0 run scoreboard players operation 65345 io *= 4 constants

execute if score lcd_enable graphics matches 0 run scoreboard players set scancount graphics 456
execute if score lcd_enable graphics matches 0 run scoreboard players set 65348 io 0
execute if score lcd_enable graphics matches 0 run scoreboard players set window_count graphics 0
