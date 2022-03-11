say SAVE SWAP RAM
tellraw @a [{"score":{"name":"bank_mode","objective":"craftboy"}}]

function craftboy:mbc/save_ram

# tellraw @a [{"score":{"name":"ram_bank","objective":"craftboy"}}]
scoreboard players operation ram_bank craftboy = transfer craftboy
# tellraw @a [{"score":{"name":"transfer","objective":"craftboy"}}]
# tellraw @a [{"score":{"name":"ram_bank","objective":"craftboy"}}]

function craftboy:mbc/swap_ram
