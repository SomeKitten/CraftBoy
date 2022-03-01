scoreboard players operation rom_bank craftboy = transfer craftboy
execute if score rom_bank craftboy matches 128.. run scoreboard players remove rom_bank crafboy 128
execute if score rom_bank craftboy matches 0 run scoreboard players set rom_bank crafboy 1

scoreboard players operation bank craftboy = transfer craftboy

function craftboy:mbc/swap_rom
