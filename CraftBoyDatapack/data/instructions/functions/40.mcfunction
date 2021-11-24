#GET_FLAGS
function util:split_flags
#M_CYCLES_C
execute if score Z flags matches 1 run scoreboard players set m_cycles craftboy 3
execute unless score Z flags matches 1 run scoreboard players set m_cycles craftboy 2
function util:get_d
#JRC
execute if score Z flags matches 1 run scoreboard players operation PC registers += d craftboy
