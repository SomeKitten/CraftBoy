scoreboard players operation bank craftboy = rom_bank_hi craftboy
scoreboard players operation bank craftboy *= 256 constants
scoreboard players operation bank craftboy += rom_bank_lo craftboy

function craftboy:mbc/swap_rom