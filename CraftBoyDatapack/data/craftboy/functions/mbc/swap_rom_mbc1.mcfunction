say SWAP ROM MBC1

function craftboy:mbc/swap_rom0_mbc1

scoreboard players operation bank craftboy += rom_bank_lo craftboy

tellraw @a [{"score":{"name":"rom_bank_lo","objective":"craftboy"}}]
tellraw @a [{"score":{"name":"rom_bank_hi","objective":"craftboy"}}]
execute if score rom_bank_lo craftboy matches 0 run scoreboard players add bank craftboy 1
scoreboard players operation bank craftboy %= rom_amount craftboy

# tellraw @a [{"score":{"name":"bank","objective":"craftboy"}}]

function craftboy:mbc/swap_rom
