scoreboard players operation AF registers /= 256 constants
scoreboard players operation AF registers *= 256 constants

execute if score C flags matches 1 run scoreboard players add AF registers 16
execute if score H flags matches 1 run scoreboard players add AF registers 32
execute if score N flags matches 1 run scoreboard players add AF registers 64
execute if score Z flags matches 1 run scoreboard players add AF registers 128
