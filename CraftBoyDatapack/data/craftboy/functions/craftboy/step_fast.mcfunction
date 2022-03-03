function craftboy:util/get_op

function craftboy:step/0_0
execute if score enable_timer craftboy matches 1 run function craftboy:timer/tick_fast
function craftboy:graphics/run
