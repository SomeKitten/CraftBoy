# say SWAP ROM LO MBC1
# tellraw @a [{"score":{"name":"transfer","objective":"craftboy"}}]

scoreboard players operation rom_bank_lo craftboy = transfer craftboy
scoreboard players operation rom_bank_lo craftboy %= 32 constants

function craftboy:mbc/swap_rom_mbc1
