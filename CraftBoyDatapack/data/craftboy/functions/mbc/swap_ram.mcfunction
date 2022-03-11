# say SWAP RAM

scoreboard players operation tmp_swap_ram craftboy = rom_bank_hi craftboy
scoreboard players operation tmp_swap_ram craftboy %= ram_amount craftboy
# tellraw @a [{"score":{"name":"ram_bank","objective":"craftboy"}}]

execute if score tmp_swap_ram craftboy matches 0 run function craftboy:mbc/ram_bank_0
execute if score tmp_swap_ram craftboy matches 1 run function craftboy:mbc/ram_bank_1
execute if score tmp_swap_ram craftboy matches 2 run function craftboy:mbc/ram_bank_2
execute if score tmp_swap_ram craftboy matches 3 run function craftboy:mbc/ram_bank_3
execute if score tmp_swap_ram craftboy matches 4 run function craftboy:mbc/ram_bank_4
execute if score tmp_swap_ram craftboy matches 5 run function craftboy:mbc/ram_bank_5
execute if score tmp_swap_ram craftboy matches 6 run function craftboy:mbc/ram_bank_6
execute if score tmp_swap_ram craftboy matches 7 run function craftboy:mbc/ram_bank_7
execute if score tmp_swap_ram craftboy matches 8 run function craftboy:mbc/ram_bank_8
execute if score tmp_swap_ram craftboy matches 9 run function craftboy:mbc/ram_bank_9
execute if score tmp_swap_ram craftboy matches 10 run function craftboy:mbc/ram_bank_10
execute if score tmp_swap_ram craftboy matches 11 run function craftboy:mbc/ram_bank_11
execute if score tmp_swap_ram craftboy matches 12 run function craftboy:mbc/ram_bank_12
execute if score tmp_swap_ram craftboy matches 13 run function craftboy:mbc/ram_bank_13
execute if score tmp_swap_ram craftboy matches 14 run function craftboy:mbc/ram_bank_14
execute if score tmp_swap_ram craftboy matches 15 run function craftboy:mbc/ram_bank_15