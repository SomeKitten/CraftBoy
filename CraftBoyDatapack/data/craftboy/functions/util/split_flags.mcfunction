scoreboard players set Z flags 0
scoreboard players set N flags 0
scoreboard players set H flags 0
scoreboard players set C flags 0

execute if score flags flags matches 128.. run scoreboard players set Z flags 1
execute if score flags flags matches 128.. run scoreboard players remove flags flags 128
execute if score flags flags matches 64.. run scoreboard players set N flags 1
execute if score flags flags matches 64.. run scoreboard players remove flags flags 64
execute if score flags flags matches 32.. run scoreboard players set H flags 1
execute if score flags flags matches 32.. run scoreboard players remove flags flags 32
execute if score flags flags matches 16.. run scoreboard players set C flags 1