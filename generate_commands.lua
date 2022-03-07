local util = require("util")
local insts = require("instructions")
local lookups = require("lookups")

local path = "./CraftBoyDatapack/data/craftboy/functions/instructions/"

local get_d = "function craftboy:util/get_d"
local get_n = "function craftboy:util/get_n"
local get_nn = "function craftboy:util/get_nn"

for opcode = 0, 255 do
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
                elseif y == 2 then
                    insts.STOP()
                elseif y == 3 then
                    insts.M_CYCLES(3)

                    w(get_d)
                    insts.JR("d craftboy")
                elseif y >= 4 and y <= 7 then
                    insts.M_CYCLES_C(lookups.cc[y - 4], 3, 2)
                    w(get_d)
                    insts.JRC(lookups.cc[y - 4], "d craftboy")
                end
            elseif z == 1 then
                if q == 0 then
                    insts.M_CYCLES(3)

                    w(get_nn)

                    if #lookups.rp[p] == 2 then
                        insts.LD(lookups.rp[p][2], "nn_lo craftboy")
                        insts.LD(lookups.rp[p][1], "nn_hi craftboy")
                    else
                        insts.LD(lookups.rp[p], "nn craftboy")
                    end
                elseif q == 1 then
                    insts.LD("tmp2_rp craftboy", "H registers")
                    w(
                        "scoreboard players operation tmp2_rp craftboy *= 256 constants")
                    w(
                        "scoreboard players operation tmp2_rp craftboy += L registers")

                    if #lookups.rp[p] == 2 then
                        insts.LD("tmp_rp craftboy", lookups.rp[p][1])
                        w(
                            "scoreboard players operation tmp_rp craftboy *= 256 constants")
                        w("scoreboard players operation tmp_rp craftboy += " ..
                              lookups.rp[p][2])
                        insts.ADD("tmp2_rp craftboy", "tmp_rp craftboy")
                    else
                        insts.ADD("tmp2_rp craftboy", lookups.rp[p])
                    end

                    insts.LD("H registers", "tmp2_rp craftboy")
                    insts.LD("L registers", "tmp2_rp craftboy")
                    w(
                        "scoreboard players operation H registers /= 256 constants")
                    w(
                        "scoreboard players operation L registers %= 256 constants")
                end
            elseif z == 2 then
                if q == 0 then
                    if p == 0 then
                        insts.M_CYCLES(2)

                        insts.LD("index craftboy", "B registers")
                        w(
                            "scoreboard players operation index craftboy *= 256 constants")
                        w(
                            "scoreboard players operation index craftboy += C registers")

                        insts.LD("transfer craftboy", "A registers")

                        w("function craftboy:write/all/main")
                    end
                    if p == 1 then
                        insts.M_CYCLES(2)

                        insts.LD("index craftboy", "D registers")
                        w(
                            "scoreboard players operation index craftboy *= 256 constants")
                        w(
                            "scoreboard players operation index craftboy += E registers")

                        insts.LD("transfer craftboy", "A registers")

                        w("function craftboy:write/all/main")
                    end
                    if p == 2 then
                        insts.M_CYCLES(2)

                        insts.LD("index craftboy", "H registers")
                        w(
                            "scoreboard players operation index craftboy *= 256 constants")
                        w(
                            "scoreboard players operation index craftboy += L registers")

                        insts.LD("transfer craftboy", "A registers")

                        w("function craftboy:write/all/main")

                        w("scoreboard players add L registers 1")
                        w(
                            "execute if score L registers matches 256.. run scoreboard players add H registers 1")
                        w(
                            "scoreboard players operation H registers %= 256 constants")
                        w(
                            "scoreboard players operation L registers %= 256 constants")
                    end
                    if p == 3 then
                        insts.M_CYCLES(2)

                        insts.LD("index craftboy", "H registers")
                        w(
                            "scoreboard players operation index craftboy *= 256 constants")
                        w(
                            "scoreboard players operation index craftboy += L registers")

                        insts.LD("transfer craftboy", "A registers")

                        w("function craftboy:write/all/main")

                        w("scoreboard players remove L registers 1")
                        w(
                            "execute if score L registers matches ..-1 run scoreboard players remove H registers 1")
                        w(
                            "scoreboard players operation H registers %= 256 constants")
                        w(
                            "scoreboard players operation L registers %= 256 constants")
                    end
                elseif q == 1 then
                    if p == 0 then
                        insts.M_CYCLES(2)

                        insts.LD("index craftboy", "B registers")
                        w(
                            "scoreboard players operation index craftboy *= 256 constants")
                        w(
                            "scoreboard players operation index craftboy += C registers")

                        w("function craftboy:read/all/main")

                        insts.LD("A registers", "transfer craftboy")
                    end
                    if p == 1 then
                        insts.M_CYCLES(2)

                        insts.LD("index craftboy", "D registers")
                        w(
                            "scoreboard players operation index craftboy *= 256 constants")
                        w(
                            "scoreboard players operation index craftboy += E registers")

                        w("function craftboy:read/all/main")

                        insts.LD("A registers", "transfer craftboy")
                    end
                    if p == 2 then
                        insts.M_CYCLES(2)

                        insts.LD("index craftboy", "H registers")
                        w(
                            "scoreboard players operation index craftboy *= 256 constants")
                        w(
                            "scoreboard players operation index craftboy += L registers")

                        w("function craftboy:read/all/main")

                        insts.LD("A registers", "transfer craftboy")

                        w("scoreboard players add L registers 1")
                        w(
                            "execute if score L registers matches 256.. run scoreboard players add H registers 1")
                        w(
                            "scoreboard players operation H registers %= 256 constants")
                        w(
                            "scoreboard players operation L registers %= 256 constants")
                    end
                    if p == 3 then
                        insts.M_CYCLES(2)

                        insts.LD("index craftboy", "H registers")
                        w(
                            "scoreboard players operation index craftboy *= 256 constants")
                        w(
                            "scoreboard players operation index craftboy += L registers")

                        w("function craftboy:read/all/main")

                        insts.LD("A registers", "transfer craftboy")

                        w("scoreboard players remove L registers 1")
                        w(
                            "execute if score L registers matches ..-1 run scoreboard players remove H registers 1")
                        w(
                            "scoreboard players operation H registers %= 256 constants")
                        w(
                            "scoreboard players operation L registers %= 256 constants")
                    end
                end
            elseif z == 3 then
                if q == 0 then
                    insts.M_CYCLES(2)

                    if #lookups.rp[p] == 2 then
                        w("scoreboard players add " .. lookups.rp[p][2] .. " 1")
                        w("execute if score " .. lookups.rp[p][2] ..
                              " matches 256.. run scoreboard players add " ..
                              lookups.rp[p][1] .. " 1")
                        w("scoreboard players operation " .. lookups.rp[p][2] ..
                              " %= 256 constants")
                        w("scoreboard players operation " .. lookups.rp[p][1] ..
                              " %= 256 constants")
                    else
                        insts.INC16(lookups.rp[p])
                    end
                elseif q == 1 then
                    insts.M_CYCLES(2)

                    if #lookups.rp[p] == 2 then
                        w("scoreboard players remove " .. lookups.rp[p][2] ..
                              " 1")
                        w("execute if score " .. lookups.rp[p][2] ..
                              " matches ..-1 run scoreboard players remove " ..
                              lookups.rp[p][1] .. " 1")
                        w("scoreboard players operation " .. lookups.rp[p][2] ..
                              " %= 256 constants")
                        w("scoreboard players operation " .. lookups.rp[p][1] ..
                              " %= 256 constants")
                    else
                        insts.DEC16(lookups.rp[p])
                    end
                end
            elseif z == 4 then
                if lookups.r[y] == "HL registers" then
                    insts.M_CYCLES(3)

                    insts.LD("index craftboy", "H registers")
                    w(
                        "scoreboard players operation index craftboy *= 256 constants")
                    w(
                        "scoreboard players operation index craftboy += L registers")

                    w("function craftboy:read/all/main")

                    insts.INC8("transfer craftboy")

                    insts.LD("index craftboy", "H registers")
                    w(
                        "scoreboard players operation index craftboy *= 256 constants")
                    w(
                        "scoreboard players operation index craftboy += L registers")

                    w("function craftboy:write/all/main")
                else
                    insts.M_CYCLES(1)

                    insts.INC8(lookups.r[y])
                end
            elseif z == 5 then
                if lookups.r[y] == "HL registers" then
                    insts.M_CYCLES(3)

                    insts.LD("index craftboy", "H registers")
                    w(
                        "scoreboard players operation index craftboy *= 256 constants")
                    w(
                        "scoreboard players operation index craftboy += L registers")

                    w("function craftboy:read/all/main")

                    insts.DEC8("transfer craftboy")

                    insts.LD("index craftboy", "H registers")
                    w(
                        "scoreboard players operation index craftboy *= 256 constants")
                    w(
                        "scoreboard players operation index craftboy += L registers")

                    w("function craftboy:write/all/main")
                else
                    insts.M_CYCLES(1)

                    insts.DEC8(lookups.r[y])
                end
            elseif z == 6 then
                w(get_n)

                if lookups.r[y] == "HL registers" then
                    insts.M_CYCLES(3)

                    insts.LD("transfer craftboy", "n craftboy")

                    insts.LD("index craftboy", "H registers")
                    w(
                        "scoreboard players operation index craftboy *= 256 constants")
                    w(
                        "scoreboard players operation index craftboy += L registers")

                    w("function craftboy:write/all/main")
                else
                    insts.M_CYCLES(2)

                    insts.LD(lookups.r[y], "n craftboy")
                end
            elseif z == 7 then
                if y == 0 then
                    insts.RLCA()
                elseif y == 1 then
                    insts.RRCA()
                elseif y == 2 then
                    insts.M_CYCLES(1)

                    insts.RLA()
                elseif y == 3 then
                    insts.M_CYCLES(1)

                    insts.RRA()
                elseif y == 4 then
                    insts.M_CYCLES(1)

                    insts.DAA()
                elseif y == 5 then
                    insts.CPL()
                elseif y == 6 then
                    insts.SCF()
                elseif y == 7 then
                    insts.CCF()
                end
            end
        elseif x == 1 then
            if z == 6 and y == 6 then
                insts.HALT()
            else
                if lookups.r[y] == "HL registers" then
                    insts.M_CYCLES(2)

                    insts.LD("transfer craftboy", lookups.r[z])

                    insts.LD("index craftboy", "H registers")
                    w(
                        "scoreboard players operation index craftboy *= 256 constants")
                    w(
                        "scoreboard players operation index craftboy += L registers")

                    w("function craftboy:write/all/main")
                elseif lookups.r[z] == "HL registers" then
                    insts.M_CYCLES(2)

                    insts.LD("index craftboy", "H registers")
                    w(
                        "scoreboard players operation index craftboy *= 256 constants")
                    w(
                        "scoreboard players operation index craftboy += L registers")
                    w("function craftboy:read/all/main")

                    insts.LD(lookups.r[y], "transfer craftboy")
                else
                    insts.M_CYCLES(1)

                    insts.LD(lookups.r[y], lookups.r[z])
                end
            end
        elseif x == 2 then
            if lookups.r[z] == "HL registers" then
                insts.M_CYCLES(2)

                insts.LD("index craftboy", "H registers")
                w("scoreboard players operation index craftboy *= 256 constants")
                w("scoreboard players operation index craftboy += L registers")

                w("function craftboy:read/all/main")

                insts[lookups.alu[y]]("transfer craftboy")
            else
                insts.M_CYCLES(1)

                insts[lookups.alu[y]](lookups.r[z])
            end
        elseif x == 3 then
            if z == 0 then
                if y >= 0 and y <= 3 then
                    insts.RETC(lookups.cc[y])
                elseif y == 4 then
                    insts.M_CYCLES(3)

                    w(get_n)
                    insts.ADD_FF00("n craftboy")
                    insts.WRITE8("n craftboy", "A registers")
                elseif y == 5 then
                    w(get_d)
                    insts.ADD_SPD("SP registers", "d craftboy")
                elseif y == 6 then
                    insts.M_CYCLES(3)

                    w(get_n)
                    insts.ADD_FF00("n craftboy")
                    insts.READ8("n craftboy")
                    insts.LD("A registers", "transfer craftboy")
                elseif y == 7 then
                    w(get_d)
                    insts.LD("tmp0 craftboy", "SP registers")
                    insts.ADD_SPD("tmp0 craftboy", "d craftboy")
                    insts.LD("H registers", "tmp0 craftboy")
                    insts.LD("L registers", "tmp0 craftboy")
                    w(
                        "scoreboard players operation H registers /= 256 constants")
                    w(
                        "scoreboard players operation L registers %= 256 constants")
                end
            elseif z == 1 then
                if q == 0 then
                    insts.M_CYCLES(3)

                    if #lookups.rp2[p] == 2 then
                        insts.POP2(lookups.rp2[p])
                    else
                        insts.POP2({"A registers", "flags flags"})
                        w("function craftboy:util/split_flags")
                    end
                elseif q == 1 then
                    if p == 0 then
                        insts.M_CYCLES(4)

                        insts.RET()
                    elseif p == 1 then
                        insts.M_CYCLES(4)

                        insts.RETI()
                    elseif p == 2 then
                        insts.M_CYCLES(1)

                        w(
                            "scoreboard players operation PC registers = H registers")
                        w(
                            "scoreboard players operation PC registers *= 256 constants")
                        w(
                            "scoreboard players operation PC registers += L registers")
                    elseif p == 3 then
                        w(
                            "scoreboard players operation SP registers = H registers")
                        w(
                            "scoreboard players operation SP registers *= 256 constants")
                        w(
                            "scoreboard players operation SP registers += L registers")
                    end
                end
            elseif z == 2 then
                if y >= 0 and y <= 3 then
                    insts.M_CYCLES(3)

                    w(get_nn)
                    insts.JPC(lookups.cc[y], "nn craftboy")
                elseif y == 4 then
                    insts.M_CYCLES(2)

                    insts.LD("value craftboy", "C registers")
                    insts.ADD_FF00("value craftboy")
                    insts.WRITE8("value craftboy", "A registers")
                elseif y == 5 then
                    insts.M_CYCLES(4)

                    w(get_nn)
                    insts.WRITE8("nn craftboy", "A registers")
                elseif y == 6 then
                    insts.LD("value craftboy", "C registers")
                    insts.ADD_FF00("value craftboy")
                    insts.READ8("value craftboy")
                    insts.LD("A registers", "transfer craftboy")
                elseif y == 7 then
                    w(get_nn)
                    insts.READ8("nn craftboy")
                    insts.LD("A registers", "transfer craftboy")
                end
            elseif z == 3 then
                if y == 0 then
                    insts.M_CYCLES(4)

                    w(get_nn)
                    insts.JP("nn craftboy")
                elseif y == 1 then
                elseif y == 6 then
                    insts.M_CYCLES(1)

                    insts.DI()
                elseif y == 7 then
                    insts.M_CYCLES(1)

                    insts.EI()
                end
            elseif z == 4 then
                if y >= 0 and y <= 3 then
                    insts.CALLC(lookups.cc[y], "nn craftboy")
                end
            elseif z == 5 then
                if q == 0 then
                    insts.M_CYCLES(4)

                    if #lookups.rp2[p] == 2 then
                        insts.PUSH2(lookups.rp2[p])
                    else
                        w("function craftboy:util/join_flags")
                        insts.PUSH2({"A registers", "flags flags"})
                    end
                elseif q == 1 then
                    if p == 0 then
                        insts.M_CYCLES(6)

                        w(get_nn)
                        insts.CALL("nn craftboy")
                    end
                end
            elseif z == 6 then
                insts.M_CYCLES(2)

                w(get_n)
                insts[lookups.alu[y]]("n craftboy")
            elseif z == 7 then
                insts.M_CYCLES(4)

                insts.RST(y * 8)
            end
        end
    else -- do CB prefix stuff
        local file_cb = file

        file_cb:write("function craftboy:util/get_op_cb\n")
        file_cb:write(
            "scoreboard players operation op_old craftboy = op_cb craftboy\n")
        file_cb:write("scoreboard players add op_old craftboy 51968\n")
        file_cb:write("function craftboy:step/cb_0_0\n")

        for cb_opcode = 0, 255 do
            file = io.open(path .. "cb_" .. cb_opcode .. ".mcfunction", "w")
            w = function(data) file:write(data .. "\n") end

            local oct_code = util.oct3:format(cb_opcode)

            local x = tonumber(oct_code:sub(1, 1))
            local y = tonumber(oct_code:sub(2, 2))
            local z = tonumber(oct_code:sub(3, 3))

            if x == 0 then
                if lookups.r[z] == "HL registers" then
                    insts.M_CYCLES(2)

                    insts.LD("index craftboy", "H registers")
                    w(
                        "scoreboard players operation index craftboy *= 256 constants")
                    w(
                        "scoreboard players operation index craftboy += L registers")

                    w("function craftboy:read/all/main")

                    insts[lookups.rot[y]]("transfer craftboy")

                    insts.LD("index craftboy", "H registers")
                    w(
                        "scoreboard players operation index craftboy *= 256 constants")
                    w(
                        "scoreboard players operation index craftboy += L registers")

                    w("function craftboy:write/all/main")
                else
                    insts.M_CYCLES(1)

                    insts[lookups.rot[y]](lookups.r[z])
                end
            elseif x == 1 then
                if lookups.r[z] == "HL registers" then
                    insts.M_CYCLES(3)

                    insts.LD("index craftboy", "H registers")
                    w(
                        "scoreboard players operation index craftboy *= 256 constants")
                    w(
                        "scoreboard players operation index craftboy += L registers")

                    w("function craftboy:read/all/main")

                    insts.BIT(y, "transfer craftboy")
                else
                    insts.M_CYCLES(2)

                    insts.BIT(y, lookups.r[z])
                end
            elseif x == 2 then
                if lookups.r[z] == "HL registers" then
                    insts.M_CYCLES(4)

                    insts.LD("index craftboy", "H registers")
                    w(
                        "scoreboard players operation index craftboy *= 256 constants")
                    w(
                        "scoreboard players operation index craftboy += L registers")

                    w("function craftboy:read/all/main")

                    insts.RES(y, "transfer craftboy")

                    insts.LD("index craftboy", "H registers")
                    w(
                        "scoreboard players operation index craftboy *= 256 constants")
                    w(
                        "scoreboard players operation index craftboy += L registers")
                    w("function craftboy:write/all/main")
                else
                    insts.M_CYCLES(2)

                    insts.RES(y, lookups.r[z])
                end
            elseif x == 3 then
                if lookups.r[z] == "HL registers" then
                    insts.M_CYCLES(4)

                    insts.LD("index craftboy", "H registers")
                    w(
                        "scoreboard players operation index craftboy *= 256 constants")
                    w(
                        "scoreboard players operation index craftboy += L registers")

                    w("function craftboy:read/all/main")

                    insts.SET(y, "transfer craftboy")

                    insts.LD("index craftboy", "H registers")
                    w(
                        "scoreboard players operation index craftboy *= 256 constants")
                    w(
                        "scoreboard players operation index craftboy += L registers")

                    w("function craftboy:write/all/main")
                else
                    insts.M_CYCLES(2)

                    insts.SET(y, lookups.r[z])
                end
            end

            file:close()
            file = nil
        end

        file_cb:close()
    end

    if file ~= nil then file:close() end
end
