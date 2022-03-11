function craftboy:mbc/save_ram

scoreboard players operation rom_bank_hi craftboy = transfer craftboy
scoreboard players operation rom_bank_hi craftboy %= 16 constants

function craftboy:mbc/swap_ram
