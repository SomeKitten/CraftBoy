# TODO MBC1 0x0000 - 0x3FFF bank switching for MBC1
# TODO retest and fix MBC3 and MBC5

execute if score index craftboy matches 0..8191 if score 327 rom matches 1..3 run function craftboy:mbc/ram_gate
execute if score index craftboy matches 0..8191 if score 327 rom matches 15..19 run function craftboy:mbc/ram_gate
execute if score index craftboy matches 0..8191 if score 327 rom matches 25..30 run function craftboy:mbc/ram_gate
execute if score index craftboy matches 4096..8191 if score 327 rom matches 252 run function craftboy:mbc/ram_gate

execute if score index craftboy matches 8192..12287 if score 327 rom matches 25..30 run function craftboy:mbc/swap_rom_lo_mbc5
execute if score index craftboy matches 8192..12287 if score 327 rom matches 252 run function craftboy:camera/swap_rom_camera
execute if score index craftboy matches 12288..16383 if score 327 rom matches 25..30 run function craftboy:mbc/swap_rom_hi_mbc5
execute if score index craftboy matches 12288..16383 if score 327 rom matches 252 run function craftboy:mbc/swap_rom_hi_mbc5
execute if score index craftboy matches 8192..16383 if score 327 rom matches 1..3 run function craftboy:mbc/swap_rom_lo_mbc1
execute if score index craftboy matches 8192..16383 if score 327 rom matches 15..19 run function craftboy:mbc/swap_rom_mbc3

execute if score index craftboy matches 16384..24575 if score 327 rom matches 252 run function craftboy:camera/set_mode
execute if score index craftboy matches 16384..24575 if score 327 rom matches 1..3 run function craftboy:mbc/swap_bank_hi_mbc1
execute if score index craftboy matches 16384..24575 if score 327 rom matches 15..19 run function craftboy:mbc/save_swap_ram
execute if score index craftboy matches 16384..24575 if score 327 rom matches 25..30 run function craftboy:mbc/save_swap_ram_mbc5

execute if score index craftboy matches 24576..32767 if score 327 rom matches 1..3 run function craftboy:mbc/select_mode_mbc1
