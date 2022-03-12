function craftboy:mbc/ram_save

scoreboard players operation rom1_bank craftboy = bank2 craftboy
scoreboard players operation rom1_bank craftboy *= 32 constants

scoreboard players set rom0_bank craftboy 0

execute if score bank_mode craftboy matches 1 run scoreboard players operation rom0_bank craftboy = rom1_bank craftboy
execute if score bank_mode craftboy matches 1 run scoreboard players operation rom0_bank craftboy %= rom_amount craftboy

scoreboard players operation rom1_bank craftboy += bank1 craftboy
scoreboard players operation rom1_bank craftboy %= rom_amount craftboy

scoreboard players set ram_bank craftboy 0
execute if score bank_mode craftboy matches 1 run scoreboard players operation ram_bank craftboy = bank2 craftboy

function craftboy:mbc/rom0_update
function craftboy:mbc/rom1_update
function craftboy:mbc/ram_load
