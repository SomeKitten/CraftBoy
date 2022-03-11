# say RAM GATE
# tellraw @a [{"score":{"name":"transfer","objective":"craftboy"}}]

scoreboard players operation transfer craftboy %= 16 constants

scoreboard players set ram_gate craftboy 0
execute if score transfer craftboy matches 10 run scoreboard players set ram_gate craftboy 1

scoreboard players operation transfer craftboy = ram_bank craftboy

function craftboy:mbc/save_swap_ram
