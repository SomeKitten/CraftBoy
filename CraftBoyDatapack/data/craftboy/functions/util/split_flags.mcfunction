scoreboard players operation in binary = AF registers
scoreboard players operation in binary %= 256 constants

scoreboard players set Z flags 0
scoreboard players set N flags 0
scoreboard players set H flags 0
scoreboard players set C flags 0

execute if score in binary matches 128.. run scoreboard players set Z flags 1
execute if score in binary matches 128.. run scoreboard players remove in binary 128
execute if score in binary matches 64.. run scoreboard players set N flags 1
execute if score in binary matches 64.. run scoreboard players remove in binary 64
execute if score in binary matches 32.. run scoreboard players set H flags 1
execute if score in binary matches 32.. run scoreboard players remove in binary 32
execute if score in binary matches 16.. run scoreboard players set C flags 1