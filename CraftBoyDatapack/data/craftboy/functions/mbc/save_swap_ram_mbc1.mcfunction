say SAVE SWAP RAM
tellraw @a [{"score":{"name":"transfer","objective":"craftboy"}}]

function craftboy:mbc/save_ram

scoreboard players operation rom_bank_hi craftboy = transfer craftboy
tellraw @a [{"score":{"name":"rom_bank_hi","objective":"craftboy"}}]
scoreboard players operation rom_bank_hi craftboy %= 4 constants
tellraw @a [{"score":{"name":"rom_bank_hi","objective":"craftboy"}}]

function craftboy:mbc/swap_ram_mbc1
