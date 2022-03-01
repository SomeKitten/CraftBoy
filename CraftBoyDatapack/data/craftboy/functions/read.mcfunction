execute if score index craftboy matches 0..255 run function read:bios_0_0
execute if score index craftboy matches 256..32767 run function read:rom_0_0
execute if score index craftboy matches 32768..38911 run function read:tile_vram_0_0
execute if score index craftboy matches 38912..40959 run function read:tile_map_vram_0_0
execute if score index craftboy matches 40960..49151 if score ram_gate craftboy matches 1 run function read:ram_0_0
execute if score index craftboy matches 40960..49151 if score ram_gate craftboy matches 0 run scoreboard players set transfer craftboy 255
execute if score index craftboy matches 49152..57343 run function read:wram_0_0
execute if score index craftboy matches 65024..65183 run function read:oam_0_0
execute if score index craftboy matches 65280..65407 run function read:io_0_0
execute if score index craftboy matches 65408..65534 run function read:hram_0_0
execute if score index craftboy matches 65535 run function read:interrupt_0_0
