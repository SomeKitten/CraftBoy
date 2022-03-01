execute if score index craftboy matches 0..8191 if score 327 rom matches 15..19 run function craftboy:mbc/ram_gate
execute if score index craftboy matches 8192..16383 if score 327 rom matches 1..3 run function craftboy:mbc/swap_rom_lo
execute if score index craftboy matches 16384..24575 if score 327 rom matches 1..3 run function craftboy:mbc/swap_rom_hi
execute if score index craftboy matches 8192..16383 if score 327 rom matches 15..19 run function craftboy:mbc/swap_rom_mbc3
execute if score index craftboy matches 16384..24575 if score 327 rom matches 15..19 run function craftboy:mbc/swap_ram_mbc3

execute if score index craftboy matches 32768..38911 run function craftboy:write/tile_vram_0_0
execute if score index craftboy matches 38912..40959 run function craftboy:write/tile_map_vram_0_0
execute if score index craftboy matches 40960..49151 if score ram_gate craftboy matches 1 run function craftboy:write/ram_0_0
execute if score index craftboy matches 49152..57343 run function craftboy:write/wram_0_0
execute if score index craftboy matches 65024..65183 run function craftboy:write/oam_0_0
execute if score index craftboy matches 65280..65407 run function craftboy:write/io_0_0
execute if score index craftboy matches 65408..65534 run function craftboy:write/hram_0_0
execute if score index craftboy matches 65535 run function craftboy:write/interrupt_0_0
