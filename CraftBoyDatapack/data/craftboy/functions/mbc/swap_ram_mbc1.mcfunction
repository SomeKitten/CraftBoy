execute if score bank_mode craftboy matches 0 run scoreboard players operation ram_bank craftboy = rom_bank_hi craftboy
execute if score bank_mode craftboy matches 0 run scoreboard players set rom_bank_hi craftboy 0

function craftboy:mbc/swap_ram

execute if score bank_mode craftboy matches 0 run scoreboard players operation rom_bank_hi craftboy = ram_bank craftboy
