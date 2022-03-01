scoreboard players set 15_0 binary 0
scoreboard players set 14_0 binary 0
scoreboard players set 13_0 binary 0
scoreboard players set 12_0 binary 0
scoreboard players set 11_0 binary 0
scoreboard players set 10_0 binary 0
scoreboard players set 9_0 binary 0
scoreboard players set 8_0 binary 0
scoreboard players set 7_0 binary 0
scoreboard players set 6_0 binary 0
scoreboard players set 5_0 binary 0
scoreboard players set 4_0 binary 0
scoreboard players set 3_0 binary 0
scoreboard players set 2_0 binary 0
scoreboard players set 1_0 binary 0
scoreboard players set 0_0 binary 0

execute if score in binary matches 32768.. run scoreboard players set 15_0 binary 1
execute if score in binary matches 32768.. run scoreboard players remove in binary 32768
execute if score in binary matches 16384.. run scoreboard players set 14_0 binary 1
execute if score in binary matches 16384.. run scoreboard players remove in binary 16384
execute if score in binary matches 8192.. run scoreboard players set 13_0 binary 1
execute if score in binary matches 8192.. run scoreboard players remove in binary 8192
execute if score in binary matches 4096.. run scoreboard players set 12_0 binary 1
execute if score in binary matches 4096.. run scoreboard players remove in binary 4096
execute if score in binary matches 2048.. run scoreboard players set 11_0 binary 1
execute if score in binary matches 2048.. run scoreboard players remove in binary 2048
execute if score in binary matches 1024.. run scoreboard players set 10_0 binary 1
execute if score in binary matches 1024.. run scoreboard players remove in binary 1024
execute if score in binary matches 512.. run scoreboard players set 9_0 binary 1
execute if score in binary matches 512.. run scoreboard players remove in binary 512
execute if score in binary matches 256.. run scoreboard players set 8_0 binary 1
execute if score in binary matches 256.. run scoreboard players remove in binary 256
execute if score in binary matches 128.. run scoreboard players set 7_0 binary 1
execute if score in binary matches 128.. run scoreboard players remove in binary 128
execute if score in binary matches 64.. run scoreboard players set 6_0 binary 1
execute if score in binary matches 64.. run scoreboard players remove in binary 64
execute if score in binary matches 32.. run scoreboard players set 5_0 binary 1
execute if score in binary matches 32.. run scoreboard players remove in binary 32
execute if score in binary matches 16.. run scoreboard players set 4_0 binary 1
execute if score in binary matches 16.. run scoreboard players remove in binary 16
execute if score in binary matches 8.. run scoreboard players set 3_0 binary 1
execute if score in binary matches 8.. run scoreboard players remove in binary 8
execute if score in binary matches 4.. run scoreboard players set 2_0 binary 1
execute if score in binary matches 4.. run scoreboard players remove in binary 4
execute if score in binary matches 2.. run scoreboard players set 1_0 binary 1
execute if score in binary matches 2.. run scoreboard players remove in binary 2
execute if score in binary matches 1 run scoreboard players set 0_0 binary 1