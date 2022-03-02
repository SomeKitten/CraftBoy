execute if score 65348 io matches 144 run function craftboy:interrupt/set_vblank
execute if score 65348 io matches 144 run scoreboard players add frame craftboy 1

scoreboard players operation frame craftboy %= frame_skip craftboy
execute if score frame craftboy matches 0 if score 65348 io matches ..143 as @e[type=minecraft:armor_stand,name=inner_screen_paste1] run function craftboy:ppu/scanline

scoreboard players add 65348 io 1

execute if score 65348 io matches 153.. run scoreboard players set window_count graphics 0
execute if score 65348 io matches 153.. run scoreboard players set buttons craftboy 255
execute if score 65348 io matches 153.. run scoreboard players set dpad craftboy 255
execute if score 65348 io matches 153.. run scoreboard players set 65348 io 0

execute run scoreboard players add scancount graphics 456
