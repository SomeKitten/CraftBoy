# say SWAP BANK HI MBC1
# tellraw @a [{"score":{"name":"transfer","objective":"craftboy"}}]

execute if score bank_mode craftboy matches 0 run function craftboy:mbc/swap_rom_hi_mbc1
execute if score bank_mode craftboy matches 1 run function craftboy:mbc/save_swap_ram