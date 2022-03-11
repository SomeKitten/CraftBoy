gamerule maxCommandChainLength 2147483647

# scoreboard objectives remove craftboy
scoreboard objectives remove registers
scoreboard objectives remove ppu
scoreboard objectives remove flags
scoreboard objectives remove graphics

# scoreboard objectives remove bios
# scoreboard objectives remove rom
scoreboard objectives remove vram
scoreboard objectives remove ram
scoreboard objectives remove wram
scoreboard objectives remove oam
scoreboard objectives remove io
scoreboard objectives remove hram
scoreboard objectives remove interrupt

scoreboard objectives add craftboy dummy
scoreboard objectives add registers dummy
scoreboard objectives add ppu dummy
scoreboard objectives add flags dummy
scoreboard objectives add graphics dummy

scoreboard objectives add bios dummy
scoreboard objectives add rom dummy
scoreboard objectives add vram dummy
scoreboard objectives add ram dummy
scoreboard objectives add wram dummy
scoreboard objectives add oam dummy
scoreboard objectives add io dummy
scoreboard objectives add hram dummy
scoreboard objectives add interrupt dummy


# scoreboard objectives remove sram
scoreboard objectives add sram dummy


scoreboard objectives remove binary
scoreboard objectives remove timer
scoreboard objectives remove sort


scoreboard objectives add binary dummy
scoreboard objectives add timer dummy
scoreboard objectives add sort dummy


scoreboard objectives remove constants
scoreboard objectives add constants dummy

scoreboard players set -8 constants -8
scoreboard players set -2 constants -2
scoreboard players set -1 constants -1
scoreboard players set 0 constants 0
scoreboard players set 1 constants 1
scoreboard players set 2 constants 2
scoreboard players set 4 constants 4
scoreboard players set 8 constants 8
scoreboard players set 16 constants 16
scoreboard players set 32 constants 32
scoreboard players set 64 constants 64
scoreboard players set 128 constants 128
scoreboard players set 160 constants 144
scoreboard players set 256 constants 256
scoreboard players set 512 constants 512
scoreboard players set 1024 constants 1024
scoreboard players set 2048 constants 2048
scoreboard players set 4096 constants 4096
scoreboard players set 8192 constants 8192
scoreboard players set 16384 constants 16384
scoreboard players set 32768 constants 32768
scoreboard players set 65536 constants 65536

scoreboard players set Z flags 1
scoreboard players set N flags 0
scoreboard players set H flags 1
scoreboard players set C flags 1

scoreboard players set A registers 1
scoreboard players set B registers 0
scoreboard players set C registers 19
scoreboard players set D registers 0
scoreboard players set E registers 216
scoreboard players set H registers 1
scoreboard players set L registers 77
scoreboard players set SP registers 65534

function craftboy:craftboy/unmap_boot
scoreboard players set PC registers 256
scoreboard players set DIV timer 0

# function rom_bios:bios
# scoreboard players set PC registers 0
scoreboard players set DIV timer 0

scoreboard players set inst_count registers 0
scoreboard players set HALT registers 0
scoreboard players set STOP registers 0
scoreboard players set IME registers 0
scoreboard players set 65344 io 145
scoreboard players set 65345 io 133
scoreboard players set 65346 io 0
scoreboard players set 65347 io 0
scoreboard players set 65348 io 0

scoreboard players set mode2_bounds graphics 376
scoreboard players set mode3_bounds graphics 204

scoreboard players set frame craftboy 0
execute unless score frame_skip craftboy matches 1.. run scoreboard players set frame_skip craftboy 1

execute unless score initial_rom craftboy matches 0.. run scoreboard players set initial_rom craftboy 1

#   00h -  32KByte (no ROM banking)
execute if score 328 rom matches 0 run scoreboard players set rom_amount craftboy 0
#   01h -  64KByte (4 banks)
execute if score 328 rom matches 1 run scoreboard players set rom_amount craftboy 4
#   02h - 128KByte (8 banks)
execute if score 328 rom matches 2 run scoreboard players set rom_amount craftboy 8
#   03h - 256KByte (16 banks)
execute if score 328 rom matches 3 run scoreboard players set rom_amount craftboy 16
#   04h - 512KByte (32 banks)
execute if score 328 rom matches 4 run scoreboard players set rom_amount craftboy 32
#   05h -   1MByte (64 banks)  - only 63 banks used by MBC1
execute if score 328 rom matches 5 run scoreboard players set rom_amount craftboy 64
#   06h -   2MByte (128 banks) - only 125 banks used by MBC1
execute if score 328 rom matches 6 run scoreboard players set rom_amount craftboy 128
#   07h -   4MByte (256 banks)
execute if score 328 rom matches 7 run scoreboard players set rom_amount craftboy 256
#   52h - 1.1MByte (72 banks)
#   53h - 1.2MByte (80 banks)
#   54h - 1.5MByte (96 banks)

#   00h - None
execute if score 329 rom matches 0 run scoreboard players set ram_amount craftboy 0
#   01h - 2 KBytes
execute if score 329 rom matches 1 run scoreboard players set ram_amount craftboy 1
#   02h - 8 Kbytes
execute if score 329 rom matches 2 run scoreboard players set ram_amount craftboy 1
#   03h - 32 KBytes (4 banks of 8KBytes each)
execute if score 329 rom matches 3 run scoreboard players set ram_amount craftboy 4

scoreboard players set ram_gate craftboy 0
scoreboard players set bank_mode craftboy 0
scoreboard players operation rom_bank craftboy = initial_rom craftboy 
scoreboard players operation rom_bank_lo craftboy = initial_rom craftboy 
scoreboard players set rom_bank_hi craftboy 0
scoreboard players set ram_bank craftboy 0
scoreboard players operation bank craftboy = initial_rom craftboy 
function craftboy:mbc/swap_rom
function craftboy:mbc/swap_ram

scoreboard players set DEBUG craftboy 0

# TEMP
# scoreboard players set 65348 io 144

# TODO rename to Block Matrix Game?
# TODO set LY and others on start
