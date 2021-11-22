execute if score index craftboy matches 512..16383 run function mbc:swap_rom_lo
execute if score index craftboy matches 16384..24575 if score 327 rom matches 1..3 run function mbc:swap_rom_hi

execute if score index craftboy matches 32768..38911 run function write:tile_vram_0_0
execute if score index craftboy matches 38912..40959 run function write:tile_map_vram_0_0
execute if score index craftboy matches 40960..49151 run function write:ram_0_0
execute if score index craftboy matches 49152..57343 run function write:wram_0_0
execute if score index craftboy matches 65024..65183 run function write:oam_0_0
execute if score index craftboy matches 65280..65407 run function write:io_0_0
execute if score index craftboy matches 65408..65534 run function write:hram_0_0
execute if score index craftboy matches 65535 run function write:interrupt_0_0
