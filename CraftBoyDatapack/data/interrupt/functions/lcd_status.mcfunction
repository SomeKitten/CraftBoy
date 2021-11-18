# local status = memory[0xFF41]

scoreboard players operation in binary = 65345 io
function util:binary_split0

# -- TODO LCD ENABLE/DISABLE

# local currentline = memory[0xFF44]
# local currentmode = bit.band(status, 0x3)
scoreboard players operation currentmode graphics = 0_0 binary
execute if score 1_0 binary matches 1 run scoreboard players add currentmode graphics 2

# local mode = 0
scoreboard players set mode graphics 0
# local req_int = 0
scoreboard players set req_int graphics 0

# if currentline >= 144 then
#     mode = 1
#     status = util.set_bit(status, 1, 0)
#     status = util.set_bit(status, 0, 1)
#     req_int = util.get_bit(status, 4)
execute if score 65348 io matches 144.. run scoreboard players set mode graphics 1
execute if score 65348 io matches 144.. run scoreboard players set 0_0 binary 1
execute if score 65348 io matches 144.. run scoreboard players set 1_0 binary 0
execute if score 65348 io matches 144.. run scoreboard players operation req_int graphics = 4_0 binary
# else
#     local mode2_bounds = 456 - 80 -- 376
#     local mode3_bounds = mode2_bounds - 172 -- 204
execute if score 65348 io matches ..143 run scoreboard players set mode2_bounds graphics 376
execute if score 65348 io matches ..143 run scoreboard players set mode3_bounds graphics 204

#     if scancount >= mode2_bounds then
#         mode = 2
#         status = util.set_bit(status, 0, 0)
#         status = util.set_bit(status, 1, 1)
#         req_int = util.get_bit(status, 5)
execute if score 65348 io matches ..143 if score scancount graphics >= mode2_bounds graphics run scoreboard players set mode graphics 2
execute if score 65348 io matches ..143 if score scancount graphics >= mode2_bounds graphics run scoreboard players set 0_0 binary 0
execute if score 65348 io matches ..143 if score scancount graphics >= mode2_bounds graphics run scoreboard players set 1_0 binary 1
execute if score 65348 io matches ..143 if score scancount graphics >= mode2_bounds graphics run scoreboard players operation req_int graphics = 5_0 binary
#     elseif scancount >= mode3_bounds then
#         mode = 3
#         status = util.set_bit(status, 1, 0)
#         status = util.set_bit(status, 1, 1)
execute if score 65348 io matches ..143 if score scancount graphics < mode2_bounds graphics if score scancount graphics >= mode3_bounds graphics run scoreboard players set mode graphics 3
execute if score 65348 io matches ..143 if score scancount graphics < mode2_bounds graphics if score scancount graphics >= mode3_bounds graphics run scoreboard players set 0_0 binary 1
execute if score 65348 io matches ..143 if score scancount graphics < mode2_bounds graphics if score scancount graphics >= mode3_bounds graphics run scoreboard players set 1_0 binary 1
#     else
#         mode = 0
#         status = util.set_bit(status, 0, 0)
#         status = util.set_bit(status, 0, 1)
#         req_int = util.get_bit(status, 3)
execute if score 65348 io matches ..143 if score scancount graphics < mode3_bounds graphics run scoreboard players set mode graphics 0
execute if score 65348 io matches ..143 if score scancount graphics < mode3_bounds graphics run scoreboard players set 0_0 binary 0
execute if score 65348 io matches ..143 if score scancount graphics < mode3_bounds graphics run scoreboard players set 1_0 binary 0
execute if score 65348 io matches ..143 if score scancount graphics < mode3_bounds graphics run scoreboard players operation req_int graphics = 3_0 binary
#     end
# end

# if req_int == 1 and mode ~= currentmode then memory.set_IF(1, 1) end
execute if score req_int graphics matches 1 unless score mode graphics = currentmode graphics run function interrupt:set_lcdstatus

# TODO fix this line in original emulator
# if memory.get(0xFF44) == memory.get(0xFF45) then
#     status = util.set_bit(status, 1, 2)
#     if util.get_bit(status, 6) == 1 then memory.set_IF(1, 1) end

execute if score 65348 io = 65349 io if score 2_0 binary matches 0 if score 6_0 binary matches 1 run function interrupt:set_lcdstatus

# TODO reset from "debug" to "set_lcdstatus"
execute if score 65348 io = 65349 io run scoreboard players set 2_0 binary 1
execute unless score 65348 io = 65349 io run scoreboard players set 2_0 binary 0


# execute if score 65348 io = 65349 io if score 6_0 binary matches 1 run function interrupt:debug

# else
#     status = util.set_bit(status, 0, 2)
# end

# memory.set(0xFF41, status)
function util:binary_join0
scoreboard players operation 65345 io = out binary
