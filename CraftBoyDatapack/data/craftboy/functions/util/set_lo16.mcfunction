# TODO optimize hi and low by switching in and in_reg

scoreboard players operation tmp0 binary = in binary

scoreboard players operation in binary = in_reg binary

function craftboy:util/get_hi16

scoreboard players operation out binary *= 256 constants
scoreboard players operation out binary += tmp0 binary
