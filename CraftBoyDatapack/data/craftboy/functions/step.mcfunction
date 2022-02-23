scoreboard players set m_cycles craftboy -1

scoreboard players set op craftboy -1
# execute unless score inst_count registers matches 82772 run function util:get_op

# 256 - 47932
# execute if score inst_count registers matches 47932 if score PC registers matches 256 run scoreboard players set inst_count registers 0

execute unless score PC registers matches ..255 run scoreboard players set DEBUG craftboy 1

# function compare:parity
execute unless score inst_count registers matches 10000000.. run function compare:parity
# execute unless score AF registers matches 65536.. run function compare:parity

execute unless score DEBUG craftboy matches 1 run function util:get_op

# execute unless score PC registers matches 256 run function util:get_op
# execute unless score SP registers matches ..60000 run function util:get_op

execute unless score op craftboy matches -1 unless score PC registers matches ..255 run scoreboard players add inst_count registers 1

execute unless score op craftboy matches -1 unless score PC registers matches ..255 run scoreboard players operation op_old craftboy = op craftboy

execute unless score op craftboy matches -1 run function step:0_0

# execute unless score op craftboy matches -1 run function graphics:run
# function timer:emu_cycles

execute if score m_cycles craftboy matches -1 if score opcode undefined matches -1 run scoreboard players operation opcode undefined = op_old craftboy