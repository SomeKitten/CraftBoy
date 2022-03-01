scoreboard players set 7_5 binary 0
scoreboard players set 6_5 binary 0
scoreboard players set 5_5 binary 0
scoreboard players set 4_5 binary 0
scoreboard players set 3_5 binary 0
scoreboard players set 2_5 binary 0
scoreboard players set 1_5 binary 0
scoreboard players set 0_5 binary 0

execute if score in binary matches 128.. run scoreboard players set 7_5 binary 1
execute if score in binary matches 128.. run scoreboard players remove in binary 128
execute if score in binary matches 64.. run scoreboard players set 6_5 binary 1
execute if score in binary matches 64.. run scoreboard players remove in binary 64
execute if score in binary matches 32.. run scoreboard players set 5_5 binary 1
execute if score in binary matches 32.. run scoreboard players remove in binary 32
execute if score in binary matches 16.. run scoreboard players set 4_5 binary 1
execute if score in binary matches 16.. run scoreboard players remove in binary 16
execute if score in binary matches 8.. run scoreboard players set 3_5 binary 1
execute if score in binary matches 8.. run scoreboard players remove in binary 8
execute if score in binary matches 4.. run scoreboard players set 2_5 binary 1
execute if score in binary matches 4.. run scoreboard players remove in binary 4
execute if score in binary matches 2.. run scoreboard players set 1_5 binary 1
execute if score in binary matches 2.. run scoreboard players remove in binary 2
execute if score in binary matches 1 run scoreboard players set 0_5 binary 1