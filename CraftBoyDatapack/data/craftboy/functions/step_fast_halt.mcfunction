# scoreboard players set DEBUG craftboy 1
# function compare:0_0

execute if score DEBUG craftboy matches 0 if score HALT registers matches 0 run scoreboard players add inst_count registers 1
execute if score DEBUG craftboy matches 0 if score HALT registers matches 0 run function craftboy:step_fast
execute if score DEBUG craftboy matches 0 if score HALT registers matches 1 run function craftboy:halt

execute if score 65295 io matches 1.. run scoreboard players set HALT registers 0

execute if score IME registers matches 1 if score 65295 io matches 1.. run function interrupt:run_interrupts


execute if score SET_IME_1 craftboy matches 1 run scoreboard players set IME registers 1
execute if score SET_IME_1 craftboy matches 1 run scoreboard players set SET_IME_1 craftboy 0

execute if score SET_IME_0 craftboy matches 1 run scoreboard players set SET_IME_1 craftboy 1
execute if score SET_IME_0 craftboy matches 1 run scoreboard players set SET_IME_0 craftboy 0

# execute if score PC registers matches 754 run scoreboard players set DEBUG craftboy 1
# execute if score PC registers matches 762 run scoreboard players set DEBUG craftboy 1
