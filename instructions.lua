local i = {}

function i.NOP() w("#NOP") end
function i.LD(to, from)
    w("#LD")
    w("scoreboard players operation " .. to .. " = " .. from)
end
function i.STOP()
    w("say STOP not implemented!")
    w("#STOP")
end
function i.HALT()
    w("#HALT")

    w("scoreboard players set HALT registers 1")
end

function i.JP(value)
    w("#JP")
    w("scoreboard players operation PC registers = " .. value)
end
function i.JPC(condition, value)
    w("#JPC")

    w("execute if score " .. condition ..
          " run scoreboard players operation PC registers = " .. value)
end
function i.JR(value)
    w("#JR")
    w("scoreboard players operation PC registers += " .. value)
end
function i.JRC(condition, value)
    w("#JRC")
    w("execute if score " .. condition ..
          " run scoreboard players operation PC registers += " .. value)
end

function i.RST(value)
    w("#RST")
    i.PUSH("PC registers")
    w("scoreboard players set PC registers " .. value)
end

function i.CALL(value)
    w("#CALL")
    i.PUSH("PC registers")
    i.JP(value)
end
function i.CALLC(condition, value)
    w("#CALLC")

    w("execute if score " .. condition ..
          " run function craftboy:instructions/205")
    w("execute unless score " .. condition ..
          " run scoreboard players add PC registers 2")
end

function i.RET()
    w("#RET")
    i.POP("PC registers")
end
function i.RETI()
    w("#RETI")

    w("scoreboard players set IME registers 1")
    i.POP("PC registers")
end
function i.RETC(condition)
    w("#RETC")

    w("execute if score " .. condition ..
          " run function craftboy:instructions/201")
end

function i.PUSH(value)
    w("#PUSH")

    i.GET_HI16(value)
    i.DEC16("SP registers")
    i.WRITE8("SP registers", "out binary")

    i.GET_LO16(value)
    i.DEC16("SP registers")
    i.WRITE8("SP registers", "out binary")
end
function i.PUSH2(value)
    w("#PUSH")

    i.DEC16("SP registers")
    i.WRITE8("SP registers", value[1])

    i.DEC16("SP registers")
    i.WRITE8("SP registers", value[2])
end
function i.POP(to)
    w("#POP")

    i.READ8("SP registers")
    i.INC16("SP registers")

    i.SET_LO16(to, "transfer craftboy")

    i.READ8("SP registers")
    i.INC16("SP registers")

    i.SET_HI16(to, "transfer craftboy")
end
function i.POP2(to)
    w("#POP")

    i.READ8("SP registers")
    i.INC16("SP registers")

    i.LD(to[2], "transfer craftboy")

    i.READ8("SP registers")
    i.INC16("SP registers")

    i.LD(to[1], "transfer craftboy")
end

function i.ADD(to, from)
    w("#ADD")
    i.LD("tmp2_ADD craftboy", to)
    i.LD("tmp3_ADD craftboy", from)

    w("scoreboard players operation " .. to .. " += " .. from)

    -- HFLAG
    i.GET_LO16_12("tmp2_ADD craftboy")
    i.LD("tmp0_ADD craftboy", "out binary")

    i.GET_LO16_12("tmp3_ADD craftboy")
    i.LD("tmp1_ADD craftboy", "out binary")

    w("scoreboard players operation tmp0_ADD craftboy += tmp1_ADD craftboy")
    w("scoreboard players set hflag_ADD craftboy 0")
    w(
        "execute if score tmp0_ADD craftboy matches 4096.. run scoreboard players set hflag_ADD craftboy 1")

    -- CFLAG
    w("scoreboard players set cflag_ADD craftboy 0")
    w("execute if score " .. to ..
          " matches 65536.. run scoreboard players set cflag_ADD craftboy 1")

    w("execute if score " .. to ..
          " matches 65536.. run scoreboard players remove " .. to .. " 65536")

    w("scoreboard players set N flags 0")
    w("scoreboard players operation H flags = hflag_ADD craftboy")
    w("scoreboard players operation C flags = cflag_ADD craftboy")
end
function i.ADD_SPD(to, from)
    w("#ADD")
    i.LD("tmp2_ADD_SPD craftboy", to)
    i.LD("tmp3_ADD_SPD craftboy", from)

    w("scoreboard players operation " .. to .. " += " .. from)

    -- HFLAG
    i.GET_LO8("tmp2_ADD_SPD craftboy")
    i.LD("tmp0_ADD_SPD craftboy", "out binary")

    i.GET_LO8("tmp3_ADD_SPD craftboy")
    i.LD("tmp1_ADD_SPD craftboy", "out binary")

    w(
        "scoreboard players operation tmp0_ADD_SPD craftboy += tmp1_ADD_SPD craftboy")
    w("scoreboard players set hflag_ADD_SPD craftboy 0")
    w(
        "execute if score tmp0_ADD_SPD craftboy matches 16.. run scoreboard players set hflag_ADD_SPD craftboy 1")

    -- CFLAG
    i.GET_LO16("tmp2_ADD_SPD craftboy")
    i.LD("tmp4_ADD_SPD craftboy", "out binary")

    i.GET_LO16("tmp3_ADD_SPD craftboy")
    i.LD("tmp5_ADD_SPD craftboy", "out binary")

    w(
        "scoreboard players operation tmp4_ADD_SPD craftboy += tmp5_ADD_SPD craftboy")
    w("scoreboard players set cflag_ADD_SPD craftboy 0")
    w(
        "execute if score tmp4_ADD_SPD craftboy matches 256.. run scoreboard players set cflag_ADD_SPD craftboy 1")

    w("execute if score " .. to ..
          " matches 65536.. run scoreboard players remove " .. to .. " 65536")
    w(
        "execute if score " .. to .. " matches ..-1 run scoreboard players add " ..
            to .. " 65536")

    w("scoreboard players set Z flags 0")
    w("scoreboard players set N flags 0")
    w("scoreboard players operation H flags = hflag_ADD_SPD craftboy")
    w("scoreboard players operation C flags = cflag_ADD_SPD craftboy")
end
function i.SUB(to, from)
    w("#SUB")
    i.LD("tmp2_SUB craftboy", to)

    w("scoreboard players operation " .. to .. " -= " .. from)

    -- HFLAG
    i.GET_LO8(to)
    i.LD("tmp0_SUB craftboy", "out binary")

    i.GET_LO8(from)
    i.LD("tmp1_SUB craftboy", "out binary")

    w("scoreboard players set hflag_SUB craftboy 0")
    w(
        "execute if score tmp1_SUB craftboy > tmp0_SUB craftboy run scoreboard players set hflag_SUB craftboy 1")

    -- CFLAG
    w("scoreboard players set cflag_SUB craftboy 0")
    w("execute if score " .. from ..
          " > tmp2_SUB craftboy run scoreboard players set cflag_SUB craftboy 1")

    w(
        "execute if score " .. to .. " matches ..-1 run scoreboard players add " ..
            to .. " 65536")

    -- ZFLAG
    w("scoreboard players set zflag_SUB craftboy 0")
    w("execute if score " .. to ..
          " matches 0 run scoreboard players set zflag_SUB craftboy 1")

    w("scoreboard players operation Z flags = zflag_SUB craftboy")
    w("scoreboard players set N flags 1")
    w("scoreboard players operation H flags = hflag_SUB craftboy")
    w("scoreboard players operation C flags = cflag_SUB craftboy")
end

function i.INC8(value)
    w("#INC8")
    w("scoreboard players add " .. value .. " 1")

    w("execute if score " .. value ..
          " matches 256.. run scoreboard players remove " .. value .. " 256")

    -- HFLAG
    i.GET_LO8(value)

    w("scoreboard players set hflag_INC craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set hflag_INC craftboy 1")

    -- ZFLAG
    w("scoreboard players set zflag_INC craftboy 0")
    w("execute if score " .. value ..
          " matches 0 run scoreboard players set zflag_INC craftboy 1")

    w("scoreboard players operation Z flags = zflag_INC craftboy")
    w("scoreboard players set N flags 0")
    w("scoreboard players operation H flags = hflag_INC craftboy")
end
function i.DEC8(value)
    w("#DEC8")

    w("scoreboard players remove " .. value .. " 1")

    w("execute if score " .. value ..
          " matches ..-1 run scoreboard players add " .. value .. " 256")

    -- HFLAG
    i.GET_LO8(value)

    w("scoreboard players set hflag_DEC craftboy 0")
    w(
        "execute if score out binary matches 15 run scoreboard players set hflag_DEC craftboy 1")

    -- ZFLAG
    w("scoreboard players set zflag_DEC craftboy 0")
    w("execute if score " .. value ..
          " matches 0 run scoreboard players set zflag_DEC craftboy 1")

    w("scoreboard players operation Z flags = zflag_DEC craftboy")
    w("scoreboard players set N flags 1")
    w("scoreboard players operation H flags = hflag_DEC craftboy")
end
function i.INC16(value)
    w("#INC16")
    w("scoreboard players add " .. value .. " 1")

    w("execute if score " .. value ..
          " matches 65536.. run scoreboard players remove " .. value .. " 65536")
end
function i.DEC16(value)
    w("#DEC16")
    w("scoreboard players remove " .. value .. " 1")

    w("execute if score " .. value ..
          " matches ..-1 run scoreboard players add " .. value .. " 65536")
end

function i.RLCA()
    w("#RLCA")
    i.LD("in binary", "A registers")
    w("function craftboy:util/binary_split0")

    i.LD("tmp_RLCA craftboy", "7_0 binary")
    i.LD("7_0 binary", "6_0 binary")
    i.LD("6_0 binary", "5_0 binary")
    i.LD("5_0 binary", "4_0 binary")
    i.LD("4_0 binary", "3_0 binary")
    i.LD("3_0 binary", "2_0 binary")
    i.LD("2_0 binary", "1_0 binary")
    i.LD("1_0 binary", "0_0 binary")
    i.LD("0_0 binary", "tmp_RLCA craftboy")

    w("function craftboy:util/binary_join0")
    i.LD("A registers", "out binary")

    w("scoreboard players set Z flags 0")
    w("scoreboard players set N flags 0")
    w("scoreboard players set H flags 0")
    w("scoreboard players operation C flags = tmp_RLCA craftboy")
end
function i.RRCA()
    w("#RRCA")
    i.LD("in binary", "A registers")
    w("function craftboy:util/binary_split0")

    i.LD("tmp_RRCA craftboy", "0_0 binary")
    i.LD("0_0 binary", "1_0 binary")
    i.LD("1_0 binary", "2_0 binary")
    i.LD("2_0 binary", "3_0 binary")
    i.LD("3_0 binary", "4_0 binary")
    i.LD("4_0 binary", "5_0 binary")
    i.LD("5_0 binary", "6_0 binary")
    i.LD("6_0 binary", "7_0 binary")
    i.LD("7_0 binary", "tmp_RRCA craftboy")

    w("function craftboy:util/binary_join0")
    i.LD("A registers", "out binary")

    w("scoreboard players set Z flags 0")
    w("scoreboard players set N flags 0")
    w("scoreboard players set H flags 0")
    w("scoreboard players operation C flags = tmp_RRCA craftboy")
end
function i.RLA()
    w("#RLA")

    i.LD("tmp_RLA craftboy", "A registers")

    i.LD("in binary", "tmp_RLA craftboy")
    w("function craftboy:util/binary_split0")

    i.LD("cflag_RLA craftboy", "7_0 binary")
    i.LD("7_0 binary", "6_0 binary")
    i.LD("6_0 binary", "5_0 binary")
    i.LD("5_0 binary", "4_0 binary")
    i.LD("4_0 binary", "3_0 binary")
    i.LD("3_0 binary", "2_0 binary")
    i.LD("2_0 binary", "1_0 binary")
    i.LD("1_0 binary", "0_0 binary")
    i.LD("0_0 binary", "C flags")

    w("function craftboy:util/binary_join0")

    i.LD("tmp_RLA craftboy", "out binary")
    i.LD("A registers", "tmp_RLA craftboy")

    w("scoreboard players set Z flags 0")
    w("scoreboard players set N flags 0")
    w("scoreboard players set H flags 0")
    w("scoreboard players operation C flags = cflag_RLA craftboy")
end
function i.RRA()
    w("#RRA")

    i.LD("tmp_RRA craftboy", "A registers")

    i.LD("in binary", "tmp_RRA craftboy")
    w("function craftboy:util/binary_split0")

    i.LD("cflag_RRA craftboy", "0_0 binary")
    i.LD("0_0 binary", "1_0 binary")
    i.LD("1_0 binary", "2_0 binary")
    i.LD("2_0 binary", "3_0 binary")
    i.LD("3_0 binary", "4_0 binary")
    i.LD("4_0 binary", "5_0 binary")
    i.LD("5_0 binary", "6_0 binary")
    i.LD("6_0 binary", "7_0 binary")
    i.LD("7_0 binary", "C flags")

    w("function craftboy:util/binary_join0")

    i.LD("tmp_RRA craftboy", "out binary")
    i.LD("A registers", "tmp_RRA craftboy")

    w("scoreboard players set Z flags 0")
    w("scoreboard players set N flags 0")
    w("scoreboard players set H flags 0")
    w("scoreboard players operation C flags = cflag_RRA craftboy")
end
function i.DAA()
    w("#DAA")

    i.LD("tmpA_DAA craftboy", "A registers")

    i.LD("in binary", "tmpA_DAA craftboy")
    w("function craftboy:util/binary_split0")
    w("scoreboard players set 4_0 binary 0")
    w("scoreboard players set 5_0 binary 0")
    w("scoreboard players set 6_0 binary 0")
    w("scoreboard players set 7_0 binary 0")
    w("function craftboy:util/binary_join0")
    i.LD("tmpA_F_DAA craftboy", "out binary")

    w("scoreboard players set tmpOR_DAA craftboy 0")
    w("execute if score N flags matches 0 " ..
          "if score C flags matches 1 run function craftboy:daa/aplusequalssixzero")
    w(
        "execute if score tmpOR_DAA craftboy matches 0 if score N flags matches 0 " ..
            "if score tmpA_DAA craftboy matches 154.. run function craftboy:daa/aplusequalssixzero")

    w("scoreboard players set tmpOR_DAA craftboy 0")
    w("execute if score N flags matches 0 " ..
          "if score H flags matches 1 run function craftboy:daa/aplusequalssix")
    w(
        "execute if score tmpOR_DAA craftboy matches 0 if score N flags matches 0 " ..
            "if score tmpA_F_DAA craftboy matches 10.. run function craftboy:daa/aplusequalssix")

    w(
        "execute if score N flags matches 1 if score C flags matches 1 run scoreboard players remove tmpA_DAA craftboy 96")
    w(
        "execute if score N flags matches 1 if score H flags matches 1 run scoreboard players remove tmpA_DAA craftboy 6")

    w(
        "execute if score tmpA_DAA craftboy matches 256.. run scoreboard players remove tmpA_DAA craftboy 256")
    w(
        "execute if score tmpA_DAA craftboy matches ..-1 run scoreboard players add tmpA_DAA craftboy 256")

    w("scoreboard players set Z flags 0")
    w(
        "execute if score tmpA_DAA craftboy matches 0 run scoreboard players set Z flags 1")

    i.LD("A registers", "tmpA_DAA craftboy")

    w("scoreboard players set H flags 0")
end
function i.CPL()
    w("#CPL")
    i.LD("in binary", "A registers")
    w("function craftboy:util/binary_split0")

    i.INV_BIT("0_0 binary")
    i.INV_BIT("1_0 binary")
    i.INV_BIT("2_0 binary")
    i.INV_BIT("3_0 binary")
    i.INV_BIT("4_0 binary")
    i.INV_BIT("5_0 binary")
    i.INV_BIT("6_0 binary")
    i.INV_BIT("7_0 binary")

    w("function craftboy:util/binary_join0")
    i.LD("A registers", "out binary")

    w("scoreboard players set N flags 1")
    w("scoreboard players set H flags 1")
end
function i.SCF()
    w("#SCF")

    w("scoreboard players set N flags 0")
    w("scoreboard players set H flags 0")
    w("scoreboard players set C flags 1")
end
function i.CCF()
    w("#CCF")

    i.INV_BIT("C flags")
    w("scoreboard players set N flags 0")
    w("scoreboard players set H flags 0")
end

function i.ADD_A(value)
    w("#ADD_A")
    i.LD("tmp0_ADD_A craftboy", "A registers")
    i.LD("tmp_ADD_A craftboy", "A registers")

    w("scoreboard players operation tmp_ADD_A craftboy += " .. value)

    -- HFLAG
    i.GET_LO8("tmp0_ADD_A craftboy")
    i.LD("tmp0_ADD_A craftboy", "out binary")

    i.GET_LO8(value)
    i.LD("tmp1_ADD_A craftboy", "out binary")

    w("scoreboard players operation tmp0_ADD_A craftboy += tmp1_ADD_A craftboy")
    w("scoreboard players set hflag_ADD_A craftboy 0")
    w(
        "execute if score tmp0_ADD_A craftboy matches 16.. run scoreboard players set hflag_ADD_A craftboy 1")

    -- CFLAG
    w("scoreboard players set cflag_ADD_A craftboy 0")
    w(
        "execute if score tmp_ADD_A craftboy matches 256.. run scoreboard players set cflag_ADD_A craftboy 1")

    w(
        "execute if score tmp_ADD_A craftboy matches 256.. run scoreboard players remove tmp_ADD_A craftboy 256")

    -- ZFLAG
    w("scoreboard players set zflag_ADD_A craftboy 0")
    w(
        "execute if score tmp_ADD_A craftboy matches 0 run scoreboard players set zflag_ADD_A craftboy 1")

    w("scoreboard players operation Z flags = zflag_ADD_A craftboy")
    w("scoreboard players set N flags 0")
    w("scoreboard players operation H flags = hflag_ADD_A craftboy")
    w("scoreboard players operation C flags = cflag_ADD_A craftboy")

    i.LD("A registers", "tmp_ADD_A craftboy")
end
function i.ADC_A(value)
    w("#ADC_A")
    i.LD("tmp_ADC_A craftboy", "A registers")
    i.LD("tmp2_ADC_A craftboy", "A registers")

    w("scoreboard players operation tmp_ADC_A craftboy += " .. value)
    w("scoreboard players operation tmp_ADC_A craftboy += C flags")

    -- HFLAG
    i.GET_LO8("tmp2_ADC_A craftboy")
    i.LD("tmp0_ADC_A craftboy", "out binary")

    i.GET_LO8(value)
    i.LD("tmp1_ADC_A craftboy", "out binary")

    w("scoreboard players operation tmp0_ADC_A craftboy += tmp1_ADC_A craftboy")
    w("scoreboard players operation tmp0_ADC_A craftboy += C flags")
    w("scoreboard players set hflag_ADC_A craftboy 0")
    w(
        "execute if score tmp0_ADC_A craftboy matches 16.. run scoreboard players set hflag_ADC_A craftboy 1")

    -- CFLAG
    w("scoreboard players set cflag_ADC_A craftboy 0")
    w(
        "execute if score tmp_ADC_A craftboy matches 256.. run scoreboard players set cflag_ADC_A craftboy 1")

    w(
        "execute if score tmp_ADC_A craftboy matches 256.. run scoreboard players remove tmp_ADC_A craftboy 256")

    -- ZFLAG
    w("scoreboard players set zflag_ADC_A craftboy 0")
    w(
        "execute if score tmp_ADC_A craftboy matches 0 run scoreboard players set zflag_ADC_A craftboy 1")

    w("scoreboard players operation Z flags = zflag_ADC_A craftboy")
    w("scoreboard players set N flags 0")
    w("scoreboard players operation H flags = hflag_ADC_A craftboy")
    w("scoreboard players operation C flags = cflag_ADC_A craftboy")

    i.LD("A registers", "tmp_ADC_A craftboy")
end
function i.SUB_A(value)
    w("#SUB_A")
    i.LD("tmp_SUB_A craftboy", "A registers")

    i.LD("tmp2_SUB_A craftboy", "tmp_SUB_A craftboy")

    w("scoreboard players operation tmp_SUB_A craftboy -= " .. value)

    -- HFLAG
    i.GET_LO8("tmp2_SUB_A craftboy")
    i.LD("tmp0_SUB craftboy", "out binary")

    i.GET_LO8(value)
    i.LD("tmp1_SUB craftboy", "out binary")

    w("scoreboard players set hflag_SUB craftboy 0")
    w(
        "execute if score tmp1_SUB craftboy > tmp0_SUB craftboy run scoreboard players set hflag_SUB craftboy 1")

    -- CFLAG
    w("scoreboard players set cflag_SUB craftboy 0")
    w("execute if score " .. value ..
          " > tmp2_SUB_A craftboy run scoreboard players set cflag_SUB craftboy 1")

    w(
        "execute if score tmp_SUB_A craftboy matches ..-1 run scoreboard players add tmp_SUB_A craftboy 256")

    -- ZFLAG
    w("scoreboard players set zflag_SUB craftboy 0")
    w(
        "execute if score tmp_SUB_A craftboy matches 0 run scoreboard players set zflag_SUB craftboy 1")

    w("scoreboard players operation Z flags = zflag_SUB craftboy")
    w("scoreboard players set N flags 1")
    w("scoreboard players operation H flags = hflag_SUB craftboy")
    w("scoreboard players operation C flags = cflag_SUB craftboy")

    i.LD("A registers", "tmp_SUB_A craftboy")
end
function i.SBC_A(value)
    w("#SBC_A")

    i.LD("tmp_SBC_A craftboy", "A registers")
    i.LD("tmp2_SBC_A craftboy", "A registers")

    w("scoreboard players operation tmp_SBC_A craftboy -= " .. value)
    w("scoreboard players operation tmp_SBC_A craftboy -= C flags")

    -- HFLAG
    i.GET_LO8("tmp2_SBC_A craftboy")
    i.LD("tmp0_SBC craftboy", "out binary")

    i.GET_LO8(value)
    i.LD("tmp1_SBC craftboy", "out binary")
    w("scoreboard players operation tmp1_SBC craftboy += C flags")

    w("scoreboard players set hflag_SBC craftboy 0")
    w(
        "execute if score tmp1_SBC craftboy > tmp0_SBC craftboy run scoreboard players set hflag_SBC craftboy 1")

    -- CFLAG
    w("scoreboard players set cflag_SBC craftboy 0")

    i.LD("tmp3_SBC craftboy", value)
    w("scoreboard players operation tmp3_SBC craftboy += C flags")

    w(
        "execute if score tmp3_SBC craftboy > tmp2_SBC_A craftboy run scoreboard players set cflag_SBC craftboy 1")

    w(
        "execute if score tmp_SBC_A craftboy matches ..-1 run scoreboard players add tmp_SBC_A craftboy 256")

    -- ZFLAG
    w("scoreboard players set zflag_SBC craftboy 0")
    w(
        "execute if score tmp_SBC_A craftboy matches 0 run scoreboard players set zflag_SBC craftboy 1")

    w("scoreboard players operation Z flags = zflag_SBC craftboy")
    w("scoreboard players set N flags 1")
    w("scoreboard players operation H flags = hflag_SBC craftboy")
    w("scoreboard players operation C flags = cflag_SBC craftboy")

    i.LD("A registers", "tmp_SBC_A craftboy")
end
function i.AND_A(value)
    w("#AND_A")
    i.LD("in binary", "A registers")
    w("function craftboy:util/binary_split0")

    i.LD("in binary", value)
    w("function craftboy:util/binary_split1")

    for b = 0, 7 do
        w("scoreboard players operation " .. b .. "_0 binary *= " .. b ..
              "_1 binary")
    end

    w("function craftboy:util/binary_join0")

    -- ZFLAG
    w("scoreboard players set zflag_AND_A craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set zflag_AND_A craftboy 1")

    i.LD("A registers", "out binary")

    w("scoreboard players operation Z flags = zflag_AND_A craftboy")
    w("scoreboard players set N flags 0")
    w("scoreboard players set H flags 1")
    w("scoreboard players set C flags 0")
end
function i.XOR_A(value)
    w("#XOR_A")
    i.LD("in binary", "A registers")
    w("function craftboy:util/binary_split0")

    i.LD("in binary", value)
    w("function craftboy:util/binary_split1")

    for b = 0, 7 do
        w("scoreboard players operation " .. b .. "_0 binary -= " .. b ..
              "_1 binary")
        w("scoreboard players operation " .. b .. "_0 binary *= " .. b ..
              "_0 binary")
    end

    w("function craftboy:util/binary_join0")

    -- ZFLAG
    w("scoreboard players set zflag_XOR_A craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set zflag_XOR_A craftboy 1")

    i.LD("A registers", "out binary")

    w("scoreboard players operation Z flags = zflag_XOR_A craftboy")
    w("scoreboard players set N flags 0")
    w("scoreboard players set H flags 0")
    w("scoreboard players set C flags 0")
end
function i.OR_A(value)
    w("#OR_A")

    i.LD("in binary", "A registers")
    w("function craftboy:util/binary_split0")

    i.LD("in binary", value)
    w("function craftboy:util/binary_split1")

    for b = 0, 7 do
        w("execute if score " .. b ..
              "_1 binary matches 1 run scoreboard players set " .. b ..
              "_0 binary 1")
    end

    w("function craftboy:util/binary_join0")

    -- ZFLAG
    w("scoreboard players set zflag_OR_A craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set zflag_OR_A craftboy 1")

    i.LD("A registers", "out binary")

    w("scoreboard players operation Z flags = zflag_OR_A craftboy")
    w("scoreboard players set N flags 0")
    w("scoreboard players set H flags 0")
    w("scoreboard players set C flags 0")
end
function i.CP_A(value)
    w("#CP_A")

    i.LD("tmp_SUB_A craftboy", "A registers")
    i.LD("tmp2_SUB craftboy", "A registers")

    w("scoreboard players operation tmp_SUB_A craftboy -= " .. value)

    -- HFLAG
    i.GET_LO8("tmp2_SUB craftboy")
    i.LD("tmp0_SUB craftboy", "out binary")

    i.GET_LO8(value)
    i.LD("tmp1_SUB craftboy", "out binary")

    w("scoreboard players set hflag_SUB craftboy 0")
    w(
        "execute if score tmp1_SUB craftboy > tmp0_SUB craftboy run scoreboard players set hflag_SUB craftboy 1")

    -- CFLAG
    w("scoreboard players set cflag_SUB craftboy 0")
    w("execute if score " .. value ..
          " > tmp2_SUB craftboy run scoreboard players set cflag_SUB craftboy 1")

    w(
        "execute if score tmp_SUB_A craftboy matches ..-1 run scoreboard players add tmp_SUB_A craftboy 256")

    -- ZFLAG
    w("scoreboard players set zflag_SUB craftboy 0")
    w(
        "execute if score tmp_SUB_A craftboy matches 0 run scoreboard players set zflag_SUB craftboy 1")

    w("scoreboard players operation Z flags = zflag_SUB craftboy")
    w("scoreboard players set N flags 1")
    w("scoreboard players operation H flags = hflag_SUB craftboy")
    w("scoreboard players operation C flags = cflag_SUB craftboy")
end

function i.DI()
    w("#DI")

    w("scoreboard players set IME registers 0")
end
function i.EI()
    w("#EI")

    w("scoreboard players set SET_IME_0 craftboy 1")
end

function i.RLC(value)
    w("#RLC")
    i.LD("in binary", value)
    w("function craftboy:util/binary_split0")

    i.LD("tmp_RLC craftboy", "7_0 binary")
    i.LD("7_0 binary", "6_0 binary")
    i.LD("6_0 binary", "5_0 binary")
    i.LD("5_0 binary", "4_0 binary")
    i.LD("4_0 binary", "3_0 binary")
    i.LD("3_0 binary", "2_0 binary")
    i.LD("2_0 binary", "1_0 binary")
    i.LD("1_0 binary", "0_0 binary")
    i.LD("0_0 binary", "tmp_RLC craftboy")

    w("function craftboy:util/binary_join0")
    i.LD(value, "out binary")

    -- ZFLAG
    w("scoreboard players set zflag_RLC craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set zflag_RLC craftboy 1")

    w("scoreboard players operation Z flags = zflag_RLC craftboy")
    w("scoreboard players set N flags 0")
    w("scoreboard players set H flags 0")
    w("scoreboard players operation C flags = tmp_RLC craftboy")
end
function i.RRC(value)
    w("#RRC")
    i.LD("in binary", value)
    w("function craftboy:util/binary_split0")

    i.LD("tmp_RRC craftboy", "0_0 binary")
    i.LD("0_0 binary", "1_0 binary")
    i.LD("1_0 binary", "2_0 binary")
    i.LD("2_0 binary", "3_0 binary")
    i.LD("3_0 binary", "4_0 binary")
    i.LD("4_0 binary", "5_0 binary")
    i.LD("5_0 binary", "6_0 binary")
    i.LD("6_0 binary", "7_0 binary")
    i.LD("7_0 binary", "tmp_RRC craftboy")

    w("function craftboy:util/binary_join0")
    i.LD(value, "out binary")

    -- ZFLAG
    w("scoreboard players set zflag_RRC craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set zflag_RRC craftboy 1")

    w("scoreboard players operation Z flags = zflag_RRC craftboy")
    w("scoreboard players set N flags 0")
    w("scoreboard players set H flags 0")
    w("scoreboard players operation C flags = tmp_RRC craftboy")
end
function i.RL(value)
    w("#RL")

    i.LD("in binary", value)
    w("function craftboy:util/binary_split0")

    i.LD("tmp_RL craftboy", "7_0 binary")
    i.LD("7_0 binary", "6_0 binary")
    i.LD("6_0 binary", "5_0 binary")
    i.LD("5_0 binary", "4_0 binary")
    i.LD("4_0 binary", "3_0 binary")
    i.LD("3_0 binary", "2_0 binary")
    i.LD("2_0 binary", "1_0 binary")
    i.LD("1_0 binary", "0_0 binary")
    i.LD("0_0 binary", "C flags")

    w("function craftboy:util/binary_join0")
    i.LD(value, "out binary")

    -- ZFLAG
    w("scoreboard players set zflag_RL craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set zflag_RL craftboy 1")

    w("scoreboard players operation Z flags = zflag_RL craftboy")
    w("scoreboard players set N flags 0")
    w("scoreboard players set H flags 0")
    w("scoreboard players operation C flags = tmp_RL craftboy")
end
function i.RR(value)
    w("#RR")

    i.LD("in binary", value)
    w("function craftboy:util/binary_split0")

    i.LD("tmp_RR craftboy", "0_0 binary")
    i.LD("0_0 binary", "1_0 binary")
    i.LD("1_0 binary", "2_0 binary")
    i.LD("2_0 binary", "3_0 binary")
    i.LD("3_0 binary", "4_0 binary")
    i.LD("4_0 binary", "5_0 binary")
    i.LD("5_0 binary", "6_0 binary")
    i.LD("6_0 binary", "7_0 binary")
    i.LD("7_0 binary", "C flags")

    w("function craftboy:util/binary_join0")
    i.LD(value, "out binary")

    -- ZFLAG
    w("scoreboard players set zflag_RR craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set zflag_RR craftboy 1")

    w("scoreboard players operation Z flags = zflag_RR craftboy")
    w("scoreboard players set N flags 0")
    w("scoreboard players set H flags 0")
    w("scoreboard players operation C flags = tmp_RR craftboy")
end
function i.SLA(value)
    w("#SLA")

    i.LD("in binary", value)
    w("function craftboy:util/binary_split0")

    i.LD("cflag_SLA craftboy", "7_0 binary")
    i.LD("7_0 binary", "6_0 binary")
    i.LD("6_0 binary", "5_0 binary")
    i.LD("5_0 binary", "4_0 binary")
    i.LD("4_0 binary", "3_0 binary")
    i.LD("3_0 binary", "2_0 binary")
    i.LD("2_0 binary", "1_0 binary")
    i.LD("1_0 binary", "0_0 binary")
    w("scoreboard players set 0_0 binary 0")

    w("function craftboy:util/binary_join0")
    i.LD(value, "out binary")

    -- ZFLAG
    w("scoreboard players set zflag_SLA craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set zflag_SLA craftboy 1")

    w("scoreboard players operation Z flags = zflag_SLA craftboy")
    w("scoreboard players set N flags 0")
    w("scoreboard players set H flags 0")
    w("scoreboard players operation C flags = cflag_SLA craftboy")
end
function i.SRA(value)
    w("#SRA")

    i.LD("in binary", value)
    w("function craftboy:util/binary_split0")

    i.LD("cflag_SRA craftboy", "0_0 binary")
    i.LD("0_0 binary", "1_0 binary")
    i.LD("1_0 binary", "2_0 binary")
    i.LD("2_0 binary", "3_0 binary")
    i.LD("3_0 binary", "4_0 binary")
    i.LD("4_0 binary", "5_0 binary")
    i.LD("5_0 binary", "6_0 binary")
    i.LD("6_0 binary", "7_0 binary")

    w("function craftboy:util/binary_join0")
    i.LD(value, "out binary")

    -- ZFLAG
    w("scoreboard players set zflag_SRA craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set zflag_SRA craftboy 1")

    w("scoreboard players operation Z flags = zflag_SRA craftboy")
    w("scoreboard players set N flags 0")
    w("scoreboard players set H flags 0")
    w("scoreboard players operation C flags = cflag_SRA craftboy")
end
function i.SWAP(value)
    w("#SWAP")

    i.GET_HI8(value)
    i.LD("tmp_SWAP craftboy", "out binary")
    i.GET_LO8(value)
    i.LD(value, "out binary")
    w("scoreboard players operation " .. value .. " *= 16 constants")
    w("scoreboard players operation " .. value .. " += tmp_SWAP craftboy")

    -- ZFLAG
    w("scoreboard players set zflag_SWAP craftboy 0")
    w("execute if score " .. value ..
          " matches 0 run scoreboard players set zflag_SWAP craftboy 1")

    w("scoreboard players operation Z flags = zflag_SWAP craftboy")
    w("scoreboard players set N flags 0")
    w("scoreboard players set H flags 0")
    w("scoreboard players set C flags 0")
end
function i.SRL(value)
    w("#SRL")

    i.LD("in binary", value)
    w("function craftboy:util/binary_split0")

    i.LD("tmp_SRL craftboy", "0_0 binary")
    i.LD("0_0 binary", "1_0 binary")
    i.LD("1_0 binary", "2_0 binary")
    i.LD("2_0 binary", "3_0 binary")
    i.LD("3_0 binary", "4_0 binary")
    i.LD("4_0 binary", "5_0 binary")
    i.LD("5_0 binary", "6_0 binary")
    i.LD("6_0 binary", "7_0 binary")
    i.LD("7_0 binary", "0 constants")

    w("function craftboy:util/binary_join0")
    i.LD(value, "out binary")

    -- ZFLAG
    w("scoreboard players set zflag_SRL craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set zflag_SRL craftboy 1")

    w("scoreboard players operation Z flags = zflag_SRL craftboy")
    w("scoreboard players set N flags 0")
    w("scoreboard players set H flags 0")
    w("scoreboard players operation C flags = tmp_SRL craftboy")
end

function i.BIT(index, value)
    w("#BIT")
    i.GET_BIT(value, index)

    i.LD("tmp_BIT craftboy", "out binary")
    i.INV_BIT("tmp_BIT craftboy")

    w("scoreboard players operation Z flags = tmp_BIT craftboy")
    w("scoreboard players set N flags 0")
    w("scoreboard players set H flags 1")
end
function i.RES(index, value)
    w("#RES")
    i.SET_BIT(value, index, "0 constants")
    i.LD(value, "out binary")
end
function i.SET(index, value)
    w("#SET")
    i.SET_BIT(value, index, "1 constants")
    i.LD(value, "out binary")
end

function i.READ8(index)
    w("#READ8")
    i.LD("index craftboy", index)
    w("function craftboy:read/all/main")
end
function i.READ16(index)
    w("#READ16")
    i.READ8(index)
    i.LD("tmp_READ16 craftboy", "transfer craftboy")
    i.INC16(index)
    i.READ8(index)
    i.SET_HI16("transfer craftboy", "tmp_READ16")
end

function i.WRITE8(index, value)
    w("#WRITE8")
    i.LD("index craftboy", index)
    i.LD("transfer craftboy", value)

    w("function craftboy:write/all/main")
end
function i.WRITE16(index, value)
    w("#WRITE16")
    i.GET_LO16(value)
    i.WRITE8(index, "out binary")

    i.GET_HI16(value)
    i.WRITE8(index, "out binary")
end

function i.GET_LO8(value)
    w("#GET_LO8")
    i.LD("in binary", value)
    w("function craftboy:util/get_lo8")
end
function i.GET_HI8(value)
    w("#GET_HI8")
    i.LD("in binary", value)
    w("function craftboy:util/get_hi8")
end

function i.GET_LO16(value)
    w("#GET_LO16")
    i.LD("in binary", value)
    w("function craftboy:util/get_lo16")
end
function i.GET_HI16(value)
    w("#GET_HI16")
    i.LD("in binary", value)
    w("function craftboy:util/get_hi16")
end

function i.GET_LO16_12(value)
    w("#GET_LO16")
    i.GET_HI16(value)
    i.GET_LO8("out binary")

    w("scoreboard players operation out binary *= 256 constants")

    i.LD("tmp_LO16_12 craftboy", "out binary")

    i.GET_LO16(value)
    w("scoreboard players operation out binary += tmp_LO16_12 craftboy")
end

function i.SET_LO16(value, lo)
    w("#SET_LO16")
    i.LD("out binary", value)
    w("scoreboard players operation out binary /= 256 constants")
    w("scoreboard players operation out binary *= 256 constants")
    w("scoreboard players operation out binary += " .. lo)

    i.LD(value, "out binary")
end
function i.SET_HI16(value, hi)
    w("#SET_HI16")
    i.LD("tmp0 binary", hi)
    i.LD("tmp1 binary", value)
    i.LD("out binary", value)
    w("scoreboard players operation tmp1 binary /= 256 constants")
    w("scoreboard players operation tmp1 binary *= 256 constants")
    w("scoreboard players operation out binary -= tmp1 binary")
    w("scoreboard players operation tmp0 binary *= 256 constants")
    w("scoreboard players operation out binary += tmp0 binary")

    i.LD(value, "out binary")
end

function i.ADD_FF00(to)
    w("#ADD_FF00")
    w("scoreboard players add " .. to .. " 65280")
end

function i.GET_BIT(value, index)
    w("#GET_BIT")
    i.LD("in binary", value)
    w("function craftboy:util/binary_split0")
    i.LD("out binary", index .. "_0 binary")
end
function i.SET_BIT(value, index, bit)
    w("#SET_BIT")
    i.LD("in binary", value)
    w("function craftboy:util/binary_split0")
    w("scoreboard players operation " .. index .. "_0 binary = " .. bit)
    w("function craftboy:util/binary_join0")
end
function i.INV_BIT(value)
    w("#INV_BIT")
    w("scoreboard players operation tmp_INV binary = 1 constants")
    w("scoreboard players operation tmp_INV binary -= " .. value)
    w("scoreboard players operation " .. value .. " = tmp_INV binary")
end

function i.GET_FLAGS()
    w("#GET_FLAGS")
    w('function craftboy:util/split_flags')
end

function i.SET_FLAGS()
    w("#SET_FLAGS")
    w('function craftboy:util/join_flags')
end

function i.M_CYCLES(value)
    w("#M_CYCLES")
    w("scoreboard players set m_cycles craftboy " .. value)
end

function i.M_CYCLES_C(condition, taken, not_taken)
    w("#M_CYCLES_C")
    w("execute if score " .. condition ..
          " run scoreboard players set m_cycles craftboy " .. taken)
    w("execute unless score " .. condition ..
          " run scoreboard players set m_cycles craftboy " .. not_taken)
end

return i
