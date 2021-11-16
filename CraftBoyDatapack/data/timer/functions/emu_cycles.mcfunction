# t.emu_cycles = function(cpu_cycles)
#     local n = cpu_cycles * 4

#     i = 0
#     while i < n do
#         t.ticks = t.ticks + 1
#         t.timer_tick()
#         i = i + 1
#     end
# end

scoreboard players operation t_cycles craftboy = m_cycles craftboy
scoreboard players operation t_cycles craftboy *= 4 constants

function timer:tick
