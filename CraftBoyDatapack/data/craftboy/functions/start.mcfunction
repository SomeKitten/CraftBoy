gamerule maxCommandChainLength 1000000000

scoreboard objectives add craftboy dummy
scoreboard objectives add registers dummy
scoreboard objectives add ppu dummy
scoreboard objectives add flags dummy
scoreboard objectives add graphics dummy
scoreboard objectives add undefined dummy
scoreboard objectives add bios dummy
scoreboard objectives add rom dummy
scoreboard objectives add vram dummy
scoreboard objectives add ram dummy
scoreboard objectives add wram dummy
scoreboard objectives add oam dummy
scoreboard objectives add io dummy
scoreboard objectives add hram dummy
scoreboard objectives add interrupt dummy
scoreboard objectives add binary dummy
scoreboard objectives add timer dummy
scoreboard objectives add sort dummy

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

# NOT NECESSARY
scoreboard players set AF registers 432
scoreboard players set BC registers 19
scoreboard players set DE registers 216
scoreboard players set HL registers 333
scoreboard players set SP registers 65534

# NECESSARY

function unmap:boot
scoreboard players set PC registers 256
scoreboard players set DIV timer 0

# function rom_bios:bios
# scoreboard players set PC registers 0
scoreboard players set DIV timer 24

# scoreboard players set inst_count registers -47932
scoreboard players set inst_count registers 0
scoreboard players set HALT registers 0
scoreboard players set STOP registers 0
scoreboard players set IME registers 0
scoreboard players set 65344 io 145
scoreboard players set 65345 io 133
scoreboard players set 65346 io 0
scoreboard players set 65347 io 0
scoreboard players set 65348 io 0
# scoreboard players set 65348 io 144

scoreboard players set mode2_bounds graphics 376
scoreboard players set mode3_bounds graphics 204

scoreboard players set rom_bank craftboy 1
scoreboard players set ram_bank craftboy 0
scoreboard players set bank craftboy 1
function mbc:swap_rom

scoreboard players set DEBUG craftboy 0
# scoreboard players set opcode undefined -1

execute store result score screen_x graphics run data get entity @e[type=minecraft:armor_stand,name=inner_screen_paste,limit=1] Pos[0]
execute store result score screen_y graphics run data get entity @e[type=minecraft:armor_stand,name=inner_screen_paste,limit=1] Pos[2]

# execute at @e[type=minecraft:armor_stand,name=inner_screen_paste,limit=1] run function sort:summon

# TEMP
# scoreboard players set 65348 io 144

# TODO rename to Block Matrix Game?
# TODO set LY and others on start
