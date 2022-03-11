execute if score bank_mode craftboy matches 0 run scoreboard players set bank craftboy 0
execute if score bank_mode craftboy matches 0 run function craftboy:mbc/swap_rom0

scoreboard players operation bank craftboy = rom_bank_hi craftboy
scoreboard players operation bank craftboy *= 32 constants

execute if score bank_mode craftboy matches 1 run function craftboy:mbc/swap_rom0
