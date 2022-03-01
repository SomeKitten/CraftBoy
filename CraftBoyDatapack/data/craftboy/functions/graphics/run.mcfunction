function craftboy:interrupt/lcd_status

scoreboard players operation scancount graphics -= m_cycles craftboy

execute if score scancount graphics matches ..0 run function craftboy:graphics/line