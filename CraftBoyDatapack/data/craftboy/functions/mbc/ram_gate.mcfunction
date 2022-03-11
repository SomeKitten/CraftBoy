say RAM GATE
# tellraw @a [{"score":{"name":"transfer","objective":"craftboy"}}]

execute if score ram_gate craftboy matches 0 run function craftboy:mbc/swap_ram

scoreboard players operation transfer craftboy %= 16 constants

scoreboard players set ram_gate craftboy 0
execute if score transfer craftboy matches 10 run scoreboard players set ram_gate craftboy 1

tellraw @a [{"score":{"name":"ram_gate","objective":"craftboy"}}]
