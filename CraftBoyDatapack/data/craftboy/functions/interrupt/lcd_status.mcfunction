scoreboard players operation in binary = 65345 io
function craftboy:util/binary_split0

scoreboard players operation currentmode graphics = mode graphics

scoreboard players set req_int graphics 0

execute if score 65348 io matches 144.. run function craftboy:graphics/mode1

execute if score 65348 io matches ..143 unless score mode graphics matches 2 if score scancount graphics >= mode2_bounds graphics run function craftboy:graphics/mode2

execute if score 65348 io matches ..143 unless score mode graphics matches 3 if score scancount graphics < mode2_bounds graphics if score scancount graphics >= mode3_bounds graphics run function craftboy:graphics/mode3

execute if score 65348 io matches ..143 unless score mode graphics matches 0 if score scancount graphics < mode3_bounds graphics run function craftboy:graphics/mode0

execute if score req_int graphics matches 1 unless score mode graphics = currentmode graphics run function craftboy:interrupt/set_lcdstatus

execute if score 65348 io = 65349 io if score 2_0 binary matches 0 if score 6_0 binary matches 1 run function craftboy:interrupt/set_lcdstatus

execute if score 65348 io = 65349 io run scoreboard players set 2_0 binary 1
execute unless score 65348 io = 65349 io run scoreboard players set 2_0 binary 0

function craftboy:util/binary_join0
scoreboard players operation 65345 io = out binary
