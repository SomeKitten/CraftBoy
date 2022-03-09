function craftboy:mbc/save_ram

scoreboard players operation ram_bank craftboy = transfer craftboy
scoreboard players operation ram_bank craftboy %= 32 constants

function craftboy:mbc/swap_ram
