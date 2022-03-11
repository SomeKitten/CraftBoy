# say SWAP ROM MBC1

scoreboard players operation bank craftboy = rom_bank_hi craftboy
scoreboard players operation bank craftboy *= 32 constants
scoreboard players operation bank craftboy += rom_bank_lo craftboy

execute if score rom_bank_lo craftboy matches 0 run scoreboard players set bank craftboy 1
scoreboard players operation bank craftboy %= rom_amount craftboy

# tellraw @a [{"score":{"name":"bank","objective":"craftboy"}}]

function craftboy:mbc/swap_rom
