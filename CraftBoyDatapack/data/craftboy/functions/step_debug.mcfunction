scoreboard players set m_cycles craftboy -1

scoreboard players set op craftboy -1
function util:get_op

scoreboard players add inst_count registers 1

scoreboard players operation op_old craftboy = op craftboy

function step:0_0

# function graphics:run
function ppu:draw_screen
# function timer:emu_cycles

scoreboard players operation opcode undefined = op_old craftboy
