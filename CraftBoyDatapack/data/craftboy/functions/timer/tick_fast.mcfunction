# TIMA = 0xFF05 / 65285 io
# TMA = 0xFF06 / 65286 io
# TAC = 0xFF07 / 65287 io
# DIV / DIV timer

# local prev_div = regs.get_DIV()
scoreboard players operation prev_DIV timer = DIV timer
# regs.inc_DIV()
scoreboard players operation DIV timer += t_cycles craftboy
execute if score DIV timer matches 65536.. run scoreboard players remove DIV timer 65536

# local timer_update = false
scoreboard players set update timer 0

# local lower_tac = bit.band(memory.get_TAC(), 0x03)
scoreboard players operation in binary = 65287 io
function craftboy:util/binary_split0

scoreboard players set 2_0 binary 0
scoreboard players set 3_0 binary 0
scoreboard players set 4_0 binary 0
scoreboard players set 5_0 binary 0
scoreboard players set 6_0 binary 0
scoreboard players set 7_0 binary 0

function craftboy:util/binary_join0
scoreboard players operation lower_TAC timer = out binary

# if lower_tac == 0x00 then
#     timer_update = util.get_bit(prev_div, 9) == 1 and
#                         util.get_bit(regs.get_DIV(), 9) == 0
# elseif lower_tac == 0x01 then
#     timer_update = util.get_bit(prev_div, 3) == 1 and
#                         util.get_bit(regs.get_DIV(), 3) == 0
# elseif lower_tac == 0x02 then
#     timer_update = util.get_bit(prev_div, 5) == 1 and
#                         util.get_bit(regs.get_DIV(), 5) == 0
# elseif lower_tac == 0x03 then
#     timer_update = util.get_bit(prev_div, 7) == 1 and
#                         util.get_bit(regs.get_DIV(), 7) == 0
# end
scoreboard players operation in binary = prev_DIV timer
function craftboy:util/binary_split0_16
scoreboard players operation in binary = DIV timer
function craftboy:util/binary_split1_16

execute if score lower_TAC timer matches 0 if score 9_0 binary matches 1 if score 9_1 binary matches 0 run scoreboard players set update timer 1
execute if score lower_TAC timer matches 1 if score 3_0 binary matches 1 if score 3_1 binary matches 0 run scoreboard players set update timer 1
execute if score lower_TAC timer matches 2 if score 5_0 binary matches 1 if score 5_1 binary matches 0 run scoreboard players set update timer 1
execute if score lower_TAC timer matches 3 if score 7_0 binary matches 1 if score 7_1 binary matches 0 run scoreboard players set update timer 1

# if timer_update and util.get_bit(memory.get_TAC(), 2) == 1 then
#     memory.inc_TIMA()

#     if memory.get_TIMA() == 0xFF then
#         memory.set_TIMA(memory.get_TMA())

#         memory.set_IF(2, 1)
#     end
# end
scoreboard players operation in binary = 65287 io
function craftboy:util/binary_split0_16
execute if score update timer matches 1 if score 2_0 binary matches 1 run scoreboard players add 65285 io 1
execute if score update timer matches 1 if score 2_0 binary matches 1 if score 65285 io matches 256 run scoreboard players operation 65285 io = 65286 io

execute if score update timer matches 1 if score 2_0 binary matches 1 if score 65285 io matches 256 run function craftboy:interrupt/set_timer

# scoreboard players remove t_cycles craftboy 1
# execute if score t_cycles craftboy matches 1.. run function craftboy:timer/tick

scoreboard players operation 65284 io = DIV timer
scoreboard players operation 65284 io /= 256 constants
