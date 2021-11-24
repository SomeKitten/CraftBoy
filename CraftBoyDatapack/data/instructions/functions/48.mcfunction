#GET_FLAGS
function util:split_flags
#M_CYCLES_C
execute if score C flags matches 0 run scoreboard players set m_cycles craftboy 3
execute unless score C flags matches 0 run scoreboard players set m_cycles craftboy 2
function util:get_d
#JRC
execute if score C flags matches 0 run scoreboard players operation PC registers += d craftboy
