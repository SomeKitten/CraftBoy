say SWAP RAM

scoreboard players operation rom_bank_hi craftboy %= ram_amount craftboy
tellraw @a [{"score":{"name":"ram_bank","objective":"craftboy"}}]

execute if score rom_bank_hi craftboy matches 0 run function craftboy:mbc/ram_bank_0
execute if score rom_bank_hi craftboy matches 1 run function craftboy:mbc/ram_bank_1
execute if score rom_bank_hi craftboy matches 2 run function craftboy:mbc/ram_bank_2
execute if score rom_bank_hi craftboy matches 3 run function craftboy:mbc/ram_bank_3
execute if score rom_bank_hi craftboy matches 4 run function craftboy:mbc/ram_bank_4
execute if score rom_bank_hi craftboy matches 5 run function craftboy:mbc/ram_bank_5
execute if score rom_bank_hi craftboy matches 6 run function craftboy:mbc/ram_bank_6
execute if score rom_bank_hi craftboy matches 7 run function craftboy:mbc/ram_bank_7
execute if score rom_bank_hi craftboy matches 8 run function craftboy:mbc/ram_bank_8
execute if score rom_bank_hi craftboy matches 9 run function craftboy:mbc/ram_bank_9
execute if score rom_bank_hi craftboy matches 10 run function craftboy:mbc/ram_bank_10
execute if score rom_bank_hi craftboy matches 11 run function craftboy:mbc/ram_bank_11
execute if score rom_bank_hi craftboy matches 12 run function craftboy:mbc/ram_bank_12
execute if score rom_bank_hi craftboy matches 13 run function craftboy:mbc/ram_bank_13
execute if score rom_bank_hi craftboy matches 14 run function craftboy:mbc/ram_bank_14
execute if score rom_bank_hi craftboy matches 15 run function craftboy:mbc/ram_bank_15