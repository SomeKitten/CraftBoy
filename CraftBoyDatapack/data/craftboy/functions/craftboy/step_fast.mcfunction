# scoreboard players operation index craftboy = PC registers
# function craftboy:read/all/main
# scoreboard players operation transfer_0 craftboy = transfer craftboy
# scoreboard players add index craftboy 1
# function craftboy:read/all/main
# scoreboard players operation transfer_1 craftboy = transfer craftboy
# scoreboard players add index craftboy 1
# function craftboy:read/all/main
# scoreboard players operation transfer_2 craftboy = transfer craftboy
# scoreboard players add index craftboy 1
# function craftboy:read/all/main
# scoreboard players operation transfer_3 craftboy = transfer craftboy
# scoreboard players add index craftboy 1

# tellraw @a [{"text":"DBG: SP/PC/A/B/C/D/E/H/L/IME/z/n/h/c/ROM1BANK/[PC]/[PC+1]/[PC+2]/[PC+3]/LY, "}, {"score":{ "name":"SP", "objective":"registers"}}, {"text":"/"}, {"score":{ "name":"PC", "objective":"registers"}}, {"text":"/"}, {"score":{ "name":"A", "objective":"registers"}}, {"text":"/"}, {"score":{ "name":"B", "objective":"registers"}}, {"text":"/"}, {"score":{ "name":"C", "objective":"registers"}}, {"text":"/"}, {"score":{ "name":"D", "objective":"registers"}}, {"text":"/"}, {"score":{ "name":"E", "objective":"registers"}}, {"text":"/"}, {"score":{ "name":"H", "objective":"registers"}}, {"text":"/"}, {"score":{ "name":"L", "objective":"registers"}}, {"text":"/"}, {"score":{ "name":"IME", "objective":"registers"}}, {"text":"/"}, {"score":{ "name":"Z", "objective":"flags"}}, {"text":"/"}, {"score":{ "name":"N", "objective":"flags"}}, {"text":"/"}, {"score":{ "name":"H", "objective":"flags"}}, {"text":"/"}, {"score":{ "name":"C", "objective":"flags"}}, {"text":"/"}, {"score":{ "name":"rom1_bank", "objective":"craftboy"}}, {"text":"/"}, {"score":{ "name":"transfer_0", "objective":"craftboy"}}, {"text":"/"}, {"score":{ "name":"transfer_1", "objective":"craftboy"}}, {"text":"/"}, {"score":{ "name":"transfer_2", "objective":"craftboy"}}, {"text":"/"}, {"score":{ "name":"transfer_3", "objective":"craftboy"}}, {"text":"/"}, {"score":{ "name":"65348", "objective":"io"}}]


execute if score PC registers matches 65536.. run scoreboard players operation PC registers %= 65536 constants

scoreboard players add inst_count registers 1

execute if score PC registers matches ..32767 run function craftboy:util/rom_instruction
execute if score PC registers matches 32768.. run function craftboy:util/instruction

execute if score enable_timer craftboy matches 1 run function craftboy:timer/tick_fast
function craftboy:graphics/run
