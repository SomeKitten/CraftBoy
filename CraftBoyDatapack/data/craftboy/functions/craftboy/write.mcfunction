execute if score index craftboy matches 0..32767 run function craftboy:mbc/write

execute if score index craftboy matches 32768..38911 run function craftboy:write/tile_vram_0_0
execute if score index craftboy matches 38912..40959 run function craftboy:write/tile_map_vram_0_0
execute if score index craftboy matches 40960..49151 if score ram_gate craftboy matches 1 run function craftboy:write/ram_0_0
execute if score index craftboy matches 49152..57343 run function craftboy:write/wram_0_0
execute if score index craftboy matches 65024..65183 run function craftboy:write/oam_0_0
execute if score index craftboy matches 65280..65407 run function craftboy:write/io_0_0
execute if score index craftboy matches 65408..65534 run function craftboy:write/hram_0_0
execute if score index craftboy matches 65535 run function craftboy:write/interrupt_0_0
