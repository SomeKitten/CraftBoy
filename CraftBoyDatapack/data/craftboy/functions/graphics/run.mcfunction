function craftboy:interrupt/lcd_status

scoreboard players operation lcd_enable_prev grpahics = lcd_enable graphics
scoreboard players operation lcd_enable graphics = 65344 io
scoreboard players operation lcd_enable graphics /= 128 constants

execute if score lcd_enable graphics matches 1 run function craftboy:graphics/lcd_enabled
execute if score lcd_enable graphics matches 0 if score lcd_enable_prev graphics matches 1 run function craftboy:graphics/lcd_disable
