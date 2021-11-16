#GET_FLAGS
#GET_LO16
#LD
scoreboard players operation in binary = AF registers
function util:get_lo16
#LD
scoreboard players operation in binary = out binary
function util:binary_split0
#LD
scoreboard players operation Z flags = 7_0 binary
#LD
scoreboard players operation N flags = 6_0 binary
#LD
scoreboard players operation H flags = 5_0 binary
#LD
scoreboard players operation C flags = 4_0 binary
#M_CYCLES_C
execute if score 4_0 binary matches 1 run scoreboard players set m_cycles craftboy 3
execute unless score 4_0 binary matches 1 run scoreboard players set m_cycles craftboy 2
function util:get_d
#JRC
execute if score 4_0 binary matches 1 run scoreboard players operation PC registers += d craftboy
