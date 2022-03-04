execute if score index craftboy matches 0..8191 if score 327 rom matches 1..3 run function craftboy:mbc/ram_gate
execute if score index craftboy matches 0..8191 if score 327 rom matches 15..19 run function craftboy:mbc/ram_gate
execute if score index craftboy matches 8192..16383 if score 327 rom matches 1..3 run function craftboy:mbc/swap_rom_lo_mbc1
execute if score index craftboy matches 8192..16383 if score 327 rom matches 15..19 run function craftboy:mbc/swap_rom_mbc3
execute if score index craftboy matches 16384..24575 if score 327 rom matches 1..3 run function craftboy:mbc/swap_bank_hi_mbc1
execute if score index craftboy matches 16384..24575 if score 327 rom matches 15..19 run function craftboy:mbc/save_swap_ram
execute if score index craftboy matches 24576..32767 if score 327 rom matches 1..3 run function craftboy:mbc/select_mode_mbc1
