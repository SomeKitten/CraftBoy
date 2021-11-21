# interrupts.lcd_status()
function interrupt:lcd_status

# scancount = scancount - instlen
scoreboard players operation scancount graphics -= m_cycles craftboy

# if scancount <= 0 then
# TODO lowered next line to bottom of file
#     memory[0xFF44] = memory[0xFF44] + 1
#     currentline = memory[0xFF44]

#     if currentline == 144 then memory.set_IF(0, 1) end
execute if score scancount graphics matches ..0 if score 65348 io matches 144 run function interrupt:set_vblank
# execute if score scancount graphics matches ..0 if score 65348 io matches 144 run function ppu:vram_debug

#     if currentline < 144 then draw_scanline() end
execute if score scancount graphics matches ..0 if score 65348 io matches ..143 run function ppu:scanline

#     if currentline > 153 then
#         memory[0xFF44] = 0
#         return true
#     end

execute if score scancount graphics matches ..0 run scoreboard players add 65348 io 1

# TODO : DEBUG
# execute if score scancount graphics matches ..0 if score 65348 io matches 153.. run fill 1 2 2 160 2 145 air
# TODO : 153 or 154?
execute if score scancount graphics matches ..0 if score 65348 io matches 153.. run scoreboard players set window_count graphics 0
execute if score scancount graphics matches ..0 if score 65348 io matches 153.. run scoreboard players set buttons craftboy 255
execute if score scancount graphics matches ..0 if score 65348 io matches 153.. run scoreboard players set dpad craftboy 255
execute if score scancount graphics matches ..0 if score 65348 io matches 153.. run scoreboard players set 65348 io 0


#     scancount = scancount + 456
execute if score scancount graphics matches ..0 run scoreboard players add scancount graphics 456
# execute if score scancount graphics matches ..0 run scoreboard players add scancount graphics 16

# end

# return false

