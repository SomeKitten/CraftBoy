# regs.IME = 0
scoreboard players set IME registers 0

# memory.set_IF(i, 0)
function interrupt:reset_lcdstatus

# TODO why check IME right after setting it?
# if not (halt and regs.IME == 0) then

#     local stack_PC = 0
#     stack_PC = regs.get_PC()
# TODO Not necessary?????

#     regs.dec_SP()
#     memory.set(regs.get_SP(), util.get_hi16(stack_PC))
#     regs.dec_SP()
#     memory.set(regs.get_SP(), util.get_lo16(stack_PC))
scoreboard players operation in binary = PC registers
function util:get_hi16
scoreboard players remove SP registers 1
execute if score SP registers matches ..-1 run scoreboard players add SP registers 65536
scoreboard players operation index craftboy = SP registers
scoreboard players operation transfer craftboy = out binary
function craftboy:write
scoreboard players operation in binary = PC registers
function util:get_lo16
scoreboard players remove SP registers 1
execute if score SP registers matches ..-1 run scoreboard players add SP registers 65536
scoreboard players operation index craftboy = SP registers
scoreboard players operation transfer craftboy = out binary
function craftboy:write

#     regs.set_PC(interrupt_locations[i + 1])
scoreboard players set PC registers 72

# end

# if halt then halt = false end
# TODO WHY TEST FIRST????
scoreboard players set HALT registers 0
