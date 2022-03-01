scoreboard players operation transfer craftboy %= 16 constants

scoreboard players set ram_gate craftboy 0
execute if score transfer craftboy matches 10 run scoreboard players set ram_gate craftboy 1
execute if score transfer craftboy matches 10 run say ENABLED RAM GATE
execute unless score transfer craftboy matches 10 run say DISABLED RAM GATE