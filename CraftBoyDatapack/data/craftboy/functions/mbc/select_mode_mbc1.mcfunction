say SELECTING MODE
tellraw @a [{"score":{"name":"transfer","objective":"craftboy"}}]

scoreboard players operation bank_mode craftboy = transfer craftboy
scoreboard players operation bank_mode craftboy %= 2