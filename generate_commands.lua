local util = require("util")
local insts = require("instructions")
local lookups = require("lookups")

-- local step_path = "./CraftBoyDatapack/data/craftboy/functions/step.mcfunction"
local path = "./CraftBoyDatapack/data/instructions/functions/"

local get_d = "function util:get_d"
local get_n = "function util:get_n"
local get_nn = "function util:get_nn"

-- local step_file = io.open(step_path, "w")

-- step_file:write("scoreboard players set m_cycles craftboy -1\n")
-- step_file:write("function util:get_op\n")
-- step_file:write("scoreboard players operation op_old craftboy = op craftboy\n")

for opcode = 0, 255 do
    -- step_file:write("execute if score op craftboy matches " .. opcode ..
    --                     " run function instructions:" .. opcode .. "\n")

    local file = io.open(path .. opcode .. ".mcfunction", "w")
    w = function(data) file:write(data .. "\n") end

    if opcode ~= 0xCB then
        local oct_code = util.oct3:format(opcode)

        local x = tonumber(oct_code:sub(1, 1))
        local y = tonumber(oct_code:sub(2, 2))
        local z = tonumber(oct_code:sub(3, 3))
        local p = y >> 1
        local q = y % 2

        if x == 0 then
            if z == 0 then
                if y == 0 then
                    insts.M_CYCLES(1)

                    insts.NOP()
                elseif y == 1 then
                    w(get_nn)

                    insts.WRITE16("nn craftboy", "SP registers")

                    -- regs.inc_PC(2)
                    -- inst_cycles = 5
                    -- memory.set(nn, util.get_lo16(regs.get_SP()))
                    -- memory.set(nn + 1, util.get_hi16(regs.get_SP()))
                elseif y == 2 then
                    insts.STOP()

                    -- regs.inc_PC(1)
                    -- insts.STOP()
                elseif y == 3 then
                    insts.M_CYCLES(3)

                    w(get_d)
                    insts.JR("d craftboy")

                    -- regs.inc_PC(1)
                    -- insts.JR(d)
                elseif y >= 4 and y <= 7 then
                    insts.GET_FLAGS()
                    insts.M_CYCLES_C(lookups.cc[y - 4], 3, 2)
                    w(get_d)
                    insts.JRC(lookups.cc[y - 4], "d craftboy")

                    -- regs.inc_PC(1)
                    -- insts.JRC(lookups.cc[y - 4](), d)
                end
            elseif z == 1 then
                if q == 0 then
                    insts.M_CYCLES(3)

                    w(get_nn)

                    insts.LD(lookups.rp[p], "nn craftboy")

                    -- regs.inc_PC(2)
                    -- inst_cycles = 3
                    -- regs["set_" .. lookups.rp[p]](nn)
                elseif q == 1 then
                    insts.ADD("HL registers", lookups.rp[p])

                    -- inst_cycles = 2
                    -- regs.set_HL(insts.ADD(regs.get_HL(), regs[lookups.rp[p]]))
                end
            elseif z == 2 then
                if q == 0 then
                    if p == 0 then
                        insts.M_CYCLES(2)

                        insts.GET_A()
                        insts.WRITE8("BC registers", "out binary")

                        -- inst_cycles = 2
                        -- memory.set(regs.get_BC(), regs.get_A())
                    end
                    if p == 1 then
                        insts.M_CYCLES(2)

                        insts.GET_A()
                        insts.WRITE8("DE registers", "out binary")

                        -- inst_cycles = 2
                        -- memory.set(regs.get_DE(), regs.get_A())
                    end
                    if p == 2 then
                        insts.M_CYCLES(2)
                        insts.GET_A()
                        insts.WRITE8("HL registers", "out binary")
                        insts.INC16("HL registers")

                        -- inst_cycles = 2
                        -- memory.set(regs.get_HL(), regs.get_A())
                        -- regs.inc_HL()
                    end
                    if p == 3 then
                        insts.M_CYCLES(2)
                        insts.GET_A()
                        insts.WRITE8("HL registers", "out binary")
                        insts.DEC16("HL registers")

                        -- inst_cycles = 2
                        -- memory.set(regs.get_HL(), regs.get_A())
                        -- regs.dec_HL()
                    end
                elseif q == 1 then
                    if p == 0 then
                        insts.READ8("BC registers")
                        insts.SET_A("transfer craftboy")

                        -- inst_cycles = 2
                        -- regs.set_A(memory.get(regs.get_BC()))
                    end
                    if p == 1 then
                        insts.M_CYCLES(2)

                        insts.READ8("DE registers")
                        insts.SET_A("transfer craftboy")

                        -- inst_cycles = 2
                        -- regs.set_A(memory.get(regs.get_DE()))
                    end
                    if p == 2 then
                        insts.M_CYCLES(2)

                        insts.READ8("HL registers")
                        insts.SET_A("transfer craftboy")
                        insts.INC16("HL registers")

                        -- inst_cycles = 2
                        -- regs.set_A(memory.get(regs.get_HL()))
                        -- regs.inc_HL()
                    end
                    if p == 3 then
                        insts.READ8("HL registers")
                        insts.SET_A("transfer craftboy")
                        insts.DEC16("HL registers")

                        -- inst_cycles = 2
                        -- regs.set_A(memory.get(regs.get_HL()))
                        -- regs.dec_HL()
                    end
                end
            elseif z == 3 then
                if q == 0 then
                    insts.M_CYCLES(2)

                    insts.INC16(lookups.rp[p])

                    -- inst_cycles = 2
                    -- local value = regs[lookups.rp[p]] + 1
                    -- while value > 0xFFFF do
                    --     value = value - 0x10000
                    -- end
                    -- regs[lookups.rp[p]] = value
                elseif q == 1 then
                    insts.DEC16(lookups.rp[p])

                    -- inst_cycles = 2
                    -- local value = regs[lookups.rp[p]] - 1
                    -- while value < 0 do
                    --     value = value + 0x10000
                    -- end
                    -- regs[lookups.rp[p]] = value
                end
            elseif z == 4 then
                if lookups.r[y] == "(HL)" then
                    insts.M_CYCLES(3)
                else
                    insts.M_CYCLES(1)
                end

                insts["GET_" .. lookups.r[y]]()
                insts.LD("value craftboy", "out binary")

                insts.INC8("value craftboy")

                insts["SET_" .. lookups.r[y]]("value craftboy")
            elseif z == 5 then
                insts.M_CYCLES(1)

                insts["GET_" .. lookups.r[y]]()
                insts.LD("value craftboy", "out binary")

                insts.DEC8("value craftboy")

                insts["SET_" .. lookups.r[y]]("value craftboy")
            elseif z == 6 then
                if lookups.r[y] == "(HL)" then
                    insts.M_CYCLES(3)
                else
                    insts.M_CYCLES(2)
                end
                w(get_n)
                insts.LD("tmp_LD craftboy", "n craftboy")
                insts["SET_" .. lookups.r[y]]("tmp_LD craftboy")

                -- regs.inc_PC(1)
                -- inst_cycles = 2
                -- regs["set_" .. lookups.r[y]](n)
            elseif z == 7 then
                if y == 0 then
                    insts.RLCA()
                elseif y == 1 then
                    insts.RRCA()
                elseif y == 2 then
                    insts.M_CYCLES(1)

                    insts.GET_FLAGS()

                    insts.RLA()
                elseif y == 3 then
                    insts.M_CYCLES(1)

                    insts.GET_FLAGS()

                    insts.RRA()
                elseif y == 4 then
                    insts.M_CYCLES(1)

                    insts.GET_FLAGS()

                    insts.DAA()
                elseif y == 5 then
                    insts.CPL()
                elseif y == 6 then
                    insts.SCF()
                elseif y == 7 then
                    insts.GET_FLAGS()

                    insts.CCF()
                end
            end
        elseif x == 1 then
            if z == 6 and y == 6 then
                insts.HALT()
            else
                if lookups.r[y] == "(HL)" or lookups.r[z] == "(HL)" then
                    insts.M_CYCLES(2)
                else
                    insts.M_CYCLES(1)
                end

                insts["GET_" .. lookups.r[z]]()
                insts.LD("value craftboy", "out binary")
                insts["SET_" .. lookups.r[y]]("value craftboy")

                -- if lookups.r[y] == "(HL)" or lookups.r[z] == "(HL)" then
                --     inst_cycles = 2
                -- else
                --     inst_cycles = 1
                -- end
                -- regs["set_" .. lookups.r[y]](regs["get_" .. lookups.r[z]]())
            end
        elseif x == 2 then
            if lookups.r[z] == "(HL)" then
                insts.M_CYCLES(2)
            else
                insts.M_CYCLES(1)
            end

            insts.GET_FLAGS()

            insts["GET_" .. lookups.r[z]]()
            insts.LD("value craftboy", "out binary")
            insts[lookups.alu[y]]("value craftboy")
        elseif x == 3 then
            if z == 0 then
                if y >= 0 and y <= 3 then
                    insts.GET_FLAGS()
                    insts.RETC(lookups.cc[y])
                elseif y == 4 then
                    insts.M_CYCLES(3)

                    w(get_n)
                    insts.GET_A()
                    insts.ADD_FF00("n craftboy")
                    insts.WRITE8("n craftboy", "out binary")

                    -- inst_cycles = 3
                    -- regs.inc_PC(1)
                    -- memory.set(0xFF00 + n, regs.get_A())
                elseif y == 5 then
                    w(get_d)
                    insts.ADD_SPD("SP registers", "d craftboy")

                    -- inst_cycles = 4
                    -- regs.inc_PC(1)
                    -- regs.set_SP(insts.ADDSPD(d))
                elseif y == 6 then
                    insts.M_CYCLES(3)

                    w(get_n)
                    insts.ADD_FF00("n craftboy")
                    insts.READ8("n craftboy")
                    insts.SET_A("transfer craftboy")

                    -- inst_cycles = 3
                    -- regs.inc_PC(1)
                    -- regs.set_A(memory.get(0xFF00 + n))
                elseif y == 7 then
                    w(get_d)
                    insts.LD("tmp0 craftboy", "SP registers")
                    insts.ADD_SPD("tmp0 craftboy", "d craftboy")
                    insts.LD("HL registers", "tmp0 craftboy")

                    -- inst_cycles = 3
                    -- regs.inc_PC(1)

                    -- regs.set_HL(insts.ADDSPD(d))
                end
            elseif z == 1 then
                if q == 0 then
                    insts.M_CYCLES(3)

                    insts.POP(lookups.rp2[p])

                    if lookups.rp2[p] == "AF registers" then
                        w(
                            "scoreboard players operation AF registers /= 16 constants")
                        w(
                            "scoreboard players operation AF registers *= 16 constants")
                    end

                    -- inst_cycles = 3
                    -- regs["set_" .. lookups.rp2[p]](insts.POP())
                elseif q == 1 then
                    if p == 0 then
                        insts.M_CYCLES(4)

                        insts.RET()
                    elseif p == 1 then
                        insts.M_CYCLES(4)

                        insts.RETI()
                    elseif p == 2 then
                        insts.M_CYCLES(1)

                        insts.JP("HL registers")

                        -- inst_cycles = 1
                        -- insts.JP(regs.get_HL())
                    elseif p == 3 then
                        insts.LD("SP registers", "HL registers")

                        -- inst_cycles = 2
                        -- regs.set_SP(regs.get_HL())
                    end
                end
            elseif z == 2 then
                if y >= 0 and y <= 3 then
                    insts.M_CYCLES(3)

                    insts.GET_FLAGS()
                    w(get_nn)
                    insts.JPC(lookups.cc[y], "nn craftboy")

                    -- regs.inc_PC(2)
                    -- insts.JPC(lookups.cc[y](), nn)
                elseif y == 4 then
                    insts.M_CYCLES(2)

                    insts.GET_C()
                    insts.LD("value craftboy", "out binary")
                    insts.ADD_FF00("value craftboy")
                    insts.GET_A()
                    insts.WRITE8("value craftboy", "out binary")

                    -- inst_cycles = 2
                    -- memory.set(0xFF00 + regs.get_C(), regs.get_A())
                elseif y == 5 then
                    insts.M_CYCLES(4)

                    w(get_nn)
                    insts.GET_A()
                    insts.WRITE8("nn craftboy", "out binary")

                    -- inst_cycles = 4
                    -- regs.inc_PC(2)
                    -- memory.set(nn, regs.get_A())
                elseif y == 6 then
                    insts.GET_C()
                    insts.LD("value craftboy", "out binary")
                    insts.ADD_FF00("value craftboy")
                    insts.READ8("value craftboy")
                    insts.SET_HI16("AF registers", "transfer craftboy")

                    -- inst_cycles = 2
                    -- regs.set_A(memory.get(0xFF00 + regs.get_C()))
                elseif y == 7 then
                    w(get_nn)
                    insts.READ8("nn craftboy")
                    insts.SET_HI16("AF registers", "transfer craftboy")

                    -- insts.SET_HI16("AF registers", "nn craftboy")

                    -- inst_cycles = 4
                    -- regs.inc_PC(2)
                    -- regs.set_A(memory.get(nn))
                end
            elseif z == 3 then
                if y == 0 then
                    insts.M_CYCLES(4)

                    w(get_nn)
                    insts.JP("nn craftboy")

                    -- inst_cycles = 4
                    -- regs.inc_PC(2)
                    -- insts.JP(nn)
                elseif y == 1 then
                    -- CB prefix
                elseif y == 6 then
                    insts.M_CYCLES(1)

                    insts.DI()
                elseif y == 7 then
                    insts.M_CYCLES(1)

                    insts.EI()
                end
            elseif z == 4 then
                if y >= 0 and y <= 3 then
                    insts.GET_FLAGS()
                    -- w(get_nn) -- already called in insts.CALL (205)
                    insts.CALLC(lookups.cc[y], "nn craftboy")

                    -- regs.inc_PC(2)
                    -- insts.CALLC(lookups.cc[y](), nn)
                end
            elseif z == 5 then
                if q == 0 then
                    insts.M_CYCLES(4)

                    insts.PUSH(lookups.rp2[p])

                    -- insts.PUSH(regs["get_" .. lookups.rp2[p]]())
                elseif q == 1 then
                    if p == 0 then
                        insts.M_CYCLES(6)

                        w(get_nn)
                        insts.CALL("nn craftboy")

                        -- regs.inc_PC(2)
                        -- insts.CALL(nn)
                    end
                end
            elseif z == 6 then
                insts.M_CYCLES(2)

                insts.GET_FLAGS()

                w(get_n)
                insts[lookups.alu[y]]("n craftboy")

                -- regs.inc_PC(1)
                -- insts[lookups.alu[y]](n)
            elseif z == 7 then
                insts.M_CYCLES(4)

                insts.RST(y * 8)
            end
        end
    else -- do CB prefix stuff
        local file_cb = file

        file_cb:write("function util:get_op_cb\n")
        file_cb:write(
            "scoreboard players operation op_old craftboy = op_cb craftboy\n")
        file_cb:write("scoreboard players add op_old craftboy 51968\n")
        file_cb:write("function step:cb_0_0\n")

        for cb_opcode = 0, 255 do
            -- file_cb:write(
            --     "execute if score op craftboy matches " .. cb_opcode ..
            --         " run function instructions:cb_" .. cb_opcode .. "\n")
            file = io.open(path .. "cb_" .. cb_opcode .. ".mcfunction", "w")
            w = function(data) file:write(data .. "\n") end

            local oct_code = util.oct3:format(cb_opcode)

            local x = tonumber(oct_code:sub(1, 1))
            local y = tonumber(oct_code:sub(2, 2))
            local z = tonumber(oct_code:sub(3, 3))

            if x == 0 then
                if lookups.r[z] == "(HL)" then
                    insts.M_CYCLES(2)
                else
                    insts.M_CYCLES(1)
                end

                insts.GET_FLAGS()

                insts["GET_" .. lookups.r[z]]()
                insts.LD("tmp_ROT craftboy", "out binary")
                insts[lookups.rot[y]]("tmp_ROT craftboy")
                insts["SET_" .. lookups.r[z]]("tmp_ROT craftboy")
            elseif x == 1 then
                if lookups.r[z] == "(HL)" then
                    insts.M_CYCLES(3)
                else
                    insts.M_CYCLES(2)
                end

                insts["GET_" .. lookups.r[z]]()
                insts.LD("tmp_BIT craftboy", "out binary")
                insts.BIT(y, "tmp_BIT craftboy")
            elseif x == 2 then
                if lookups.r[z] == "(HL)" then
                    insts.M_CYCLES(4)
                else
                    insts.M_CYCLES(2)
                end

                insts["GET_" .. lookups.r[z]]()
                insts.LD("tmp_RES craftboy", "out binary")
                insts.RES(y, "tmp_RES craftboy")
                insts["SET_" .. lookups.r[z]]("tmp_RES craftboy")
            elseif x == 3 then
                if lookups.r[z] == "(HL)" then
                    insts.M_CYCLES(4)
                else
                    insts.M_CYCLES(2)
                end

                insts["GET_" .. lookups.r[z]]()
                insts.LD("tmp_SET craftboy", "out binary")
                insts.SET(y, "tmp_SET craftboy")
                insts["SET_" .. lookups.r[z]]("tmp_SET craftboy")
            end

            file:close()
            file = nil
        end

        file_cb:close()
    end

    if file ~= nil then file:close() end
end

-- step_file:write(
--     "execute if score m_cycles craftboy matches -1 if score opcode undefined matches 0 run scoreboard players operation opcode undefined = op_old craftboy\n")

-- step_file:close()
