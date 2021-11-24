#M_CYCLES
scoreboard players set m_cycles craftboy 3
#GET_FLAGS
function util:split_flags
function util:get_nn
#JPC
execute if score Z flags matches 1 run scoreboard players operation PC registers = nn craftboy
