# TODO what is going on here?
# make clearer names (rom_bank, bank)

scoreboard players operation rom_bank craftboy = transfer craftboy
scoreboard players operation rom_bank craftboy %= 128 constants
execute if score rom_bank craftboy matches 0 run scoreboard players set rom_bank crafboy 1

scoreboard players operation bank craftboy = transfer craftboy

function craftboy:mbc/swap_rom
