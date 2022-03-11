# say SWAP ROM HI MBC1

scoreboard players operation rom_bank_hi craftboy = transfer craftboy
scoreboard players operation rom_bank_hi craftboy %= 4 constants

function craftboy:mbc/swap_rom_mbc1
