execute if score 65348 io matches 144 run function interrupt:set_vblank

execute if score 65348 io matches ..143 as @e[type=minecraft:armor_stand,name=inner_screen_paste1] run function ppu:scanline

scoreboard players add 65348 io 1

execute if score 65348 io matches 153.. run scoreboard players set window_count graphics 0
execute if score 65348 io matches 153.. run scoreboard players set buttons craftboy 255
execute if score 65348 io matches 153.. run scoreboard players set dpad craftboy 255
execute if score 65348 io matches 153.. run scoreboard players set 65348 io 0

execute run scoreboard players add scancount graphics 456
