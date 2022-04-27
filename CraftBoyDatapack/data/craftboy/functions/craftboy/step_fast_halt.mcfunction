execute if score HALT registers matches 0 run function craftboy:craftboy/step_fast

# function compare:parity
# execute if score HALT registers matches 0 if score DEBUG craftboy matches 0 run function craftboy:craftboy/step_fast

execute if score HALT registers matches 1 run function craftboy:craftboy/halt

execute if score SET_IME_1 craftboy matches 1 run function craftboy:craftboy/set_ime_1
execute if score SET_IME_0 craftboy matches 1 run function craftboy:craftboy/set_ime_0

execute if score IME registers matches 1 if score 65295 io matches 1.. if score 65535 interrupt matches 1.. run function craftboy:interrupt/run_interrupts
