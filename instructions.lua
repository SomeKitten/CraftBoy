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

    w("execute if score " .. condition .. " run function instructions:205")
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

    w("execute if score " .. condition .. " run function instructions:201")
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
function i.POP(to)
    w("#POP")
    i.READ8("SP registers")
    i.INC16("SP registers")

    i.SET_LO16(to, "transfer craftboy")

    i.READ8("SP registers")
    i.INC16("SP registers")

    i.SET_HI16(to, "transfer craftboy")
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

    -- -- ZFLAG
    -- w("scoreboard players set zflag_ADD craftboy 0")
    -- w("execute if score " .. to ..
    --       " matches 0 run scoreboard players set zflag_ADD craftboy 1")

    -- i.SET_FLAG_Z("zflag_ADD craftboy")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("hflag_ADD craftboy")
    i.SET_FLAG_C("cflag_ADD craftboy")
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

    i.SET_FLAG_Z("0 constants")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("hflag_ADD_SPD craftboy")
    i.SET_FLAG_C("cflag_ADD_SPD craftboy")
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

    i.SET_FLAG_Z("zflag_SUB craftboy")
    i.SET_FLAG_N("1 constants")
    i.SET_FLAG_H("hflag_SUB craftboy")
    i.SET_FLAG_C("cflag_SUB craftboy")
end

function i.INC8(value)
    w("#INC8")
    w("scoreboard players add " .. value .. " 1")

    w("execute if score " .. value ..
          " matches 256.. run scoreboard players remove " .. value .. " 256")

    --   TODO check HFLAG of all instructions
    -- HFLAG
    i.GET_LO8(value)

    w("scoreboard players set hflag_INC craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set hflag_INC craftboy 1")

    -- ZFLAG
    w("scoreboard players set zflag_INC craftboy 0")
    w("execute if score " .. value ..
          " matches 0 run scoreboard players set zflag_INC craftboy 1")

    i.SET_FLAG_Z("zflag_INC craftboy")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("hflag_INC craftboy")
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

    i.SET_FLAG_Z("zflag_DEC craftboy")
    i.SET_FLAG_N("1 constants")
    i.SET_FLAG_H("hflag_DEC craftboy")
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
    i.GET_A()
    i.LD("in binary", "out binary")
    w("function util:binary_split0")

    i.LD("tmp_RLCA craftboy", "7_0 binary")
    i.LD("7_0 binary", "6_0 binary")
    i.LD("6_0 binary", "5_0 binary")
    i.LD("5_0 binary", "4_0 binary")
    i.LD("4_0 binary", "3_0 binary")
    i.LD("3_0 binary", "2_0 binary")
    i.LD("2_0 binary", "1_0 binary")
    i.LD("1_0 binary", "0_0 binary")
    i.LD("0_0 binary", "tmp_RLCA craftboy")

    w("function util:binary_join0")
    i.SET_A("out binary")

    i.SET_FLAG_Z("0 constants")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("0 constants")
    i.SET_FLAG_C("tmp_RLCA craftboy")
end
function i.RRCA()
    w("#RRCA")
    i.GET_A()
    i.LD("in binary", "out binary")
    w("function util:binary_split0")

    i.LD("tmp_RRCA craftboy", "0_0 binary")
    i.LD("0_0 binary", "1_0 binary")
    i.LD("1_0 binary", "2_0 binary")
    i.LD("2_0 binary", "3_0 binary")
    i.LD("3_0 binary", "4_0 binary")
    i.LD("4_0 binary", "5_0 binary")
    i.LD("5_0 binary", "6_0 binary")
    i.LD("6_0 binary", "7_0 binary")
    i.LD("7_0 binary", "tmp_RRCA craftboy")

    w("function util:binary_join0")
    i.SET_A("out binary")

    i.SET_FLAG_Z("0 constants")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("0 constants")
    i.SET_FLAG_C("tmp_RRCA craftboy")
end
function i.RLA()
    w("#RLA")

    i.GET_A()
    i.LD("tmp_RLA craftboy", "out binary")

    i.LD("in binary", "tmp_RLA craftboy")
    w("function util:binary_split0")

    i.LD("cflag_RLA craftboy", "7_0 binary")
    i.LD("7_0 binary", "6_0 binary")
    i.LD("6_0 binary", "5_0 binary")
    i.LD("5_0 binary", "4_0 binary")
    i.LD("4_0 binary", "3_0 binary")
    i.LD("3_0 binary", "2_0 binary")
    i.LD("2_0 binary", "1_0 binary")
    i.LD("1_0 binary", "0_0 binary")
    i.LD("0_0 binary", "C flags")

    w("function util:binary_join0")

    i.LD("tmp_RLA craftboy", "out binary")
    i.SET_A("tmp_RLA craftboy")

    i.SET_FLAG_Z("0 constants")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("0 constants")
    i.SET_FLAG_C("cflag_RLA craftboy")
end
function i.RRA()
    w("#RRA")

    i.GET_A()
    i.LD("tmp_RRA craftboy", "out binary")

    i.LD("in binary", "tmp_RRA craftboy")
    w("function util:binary_split0")

    i.LD("cflag_RRA craftboy", "0_0 binary")
    i.LD("0_0 binary", "1_0 binary")
    i.LD("1_0 binary", "2_0 binary")
    i.LD("2_0 binary", "3_0 binary")
    i.LD("3_0 binary", "4_0 binary")
    i.LD("4_0 binary", "5_0 binary")
    i.LD("5_0 binary", "6_0 binary")
    i.LD("6_0 binary", "7_0 binary")
    i.LD("7_0 binary", "C flags")

    w("function util:binary_join0")

    i.LD("tmp_RRA craftboy", "out binary")
    i.SET_A("tmp_RRA craftboy")

    i.SET_FLAG_Z("0 constants")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("0 constants")
    i.SET_FLAG_C("cflag_RRA craftboy")
end
function i.DAA()
    w("#DAA")

    i.GET_A()

    i.LD("tmpA_DAA craftboy", "out binary")

    i.LD("in binary", "tmpA_DAA craftboy")
    w("function util:binary_split0")
    w("scoreboard players set 4_0 binary 0")
    w("scoreboard players set 5_0 binary 0")
    w("scoreboard players set 6_0 binary 0")
    w("scoreboard players set 7_0 binary 0")
    w("function util:binary_join0")
    i.LD("tmpA_F_DAA craftboy", "out binary")

    w("scoreboard players set tmpOR_DAA craftboy 0")
    w("execute if score N flags matches 0 " ..
          "if score C flags matches 1 run function daa:aplusequalssixzero")
    w(
        "execute if score tmpOR_DAA craftboy matches 0 if score N flags matches 0 " ..
            "if score tmpA_DAA craftboy matches 154.. run function daa:aplusequalssixzero")

    w("scoreboard players set tmpOR_DAA craftboy 0")
    w("execute if score N flags matches 0 " ..
          "if score H flags matches 1 run function daa:aplusequalssix")
    w(
        "execute if score tmpOR_DAA craftboy matches 0 if score N flags matches 0 " ..
            "if score tmpA_F_DAA craftboy matches 10.. run function daa:aplusequalssix")

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

    i.SET_A("tmpA_DAA craftboy")

    i.SET_FLAG_Z("Z flags")
    i.SET_FLAG_H("0 constants")
    i.SET_FLAG_C("C flags")

    -- if (!n_flag) 
    -- { 
    --     if (c_flag || a > 0x99) { a += 0x60; c_flag = 1; }
    --     if (h_flag || (a & 0x0f) > 0x09) { a += 0x6; }
    -- } else 
    -- { 
    --     if (c_flag) { a -= 0x60; }
    --     if (h_flag) { a -= 0x6; }
    -- }

    -- z_flag = (a == 0);
    -- h_flag = 0; 
end
function i.CPL()
    w("#CPL")
    i.GET_A()
    i.LD("in binary", "out binary")
    w("function util:binary_split0")

    i.INV_BIT("0_0 binary")
    i.INV_BIT("1_0 binary")
    i.INV_BIT("2_0 binary")
    i.INV_BIT("3_0 binary")
    i.INV_BIT("4_0 binary")
    i.INV_BIT("5_0 binary")
    i.INV_BIT("6_0 binary")
    i.INV_BIT("7_0 binary")

    w("function util:binary_join0")
    i.SET_A("out binary")

    i.SET_FLAG_N("1 constants")
    i.SET_FLAG_H("1 constants")
end
function i.SCF()
    w("#SCF")

    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("0 constants")
    i.SET_FLAG_C("1 constants")
end
function i.CCF()
    w("#CCF")

    i.INV_BIT("C flags")

    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("0 constants")
    i.SET_FLAG_C("C flags")
end

function i.ADD_A(value)
    w("#ADD_A")
    i.GET_A()
    i.LD("tmp0_ADD_A craftboy", "out binary")

    i.LD("tmp_ADD_A craftboy", "out binary")

    -- i.ADD("tmp_ADD_A craftboy", value)

    w("scoreboard players operation tmp_ADD_A craftboy += " .. value)

    -- TODO fix flags using overwritten values
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

    i.SET_FLAG_Z("zflag_ADD_A craftboy")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("hflag_ADD_A craftboy")
    i.SET_FLAG_C("cflag_ADD_A craftboy")

    i.SET_A("tmp_ADD_A craftboy")
end
function i.ADC_A(value)
    w("#ADC_A")
    i.GET_A()
    i.LD("tmp_ADC_A craftboy", "out binary")
    i.LD("tmp2_ADC_A craftboy", "out binary")

    -- i.ADD("tmp_ADC_A craftboy", value)

    w("scoreboard players operation tmp_ADC_A craftboy += " .. value)
    w("scoreboard players operation tmp_ADC_A craftboy += C flags")

    -- TODO fix flags using overwritten values
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

    i.SET_FLAG_Z("zflag_ADC_A craftboy")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("hflag_ADC_A craftboy")
    i.SET_FLAG_C("cflag_ADC_A craftboy")

    i.SET_A("tmp_ADC_A craftboy")
end
function i.SUB_A(value)
    w("#SUB_A")
    i.GET_A()

    i.LD("tmp_SUB_A craftboy", "out binary")

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

    i.SET_FLAG_Z("zflag_SUB craftboy")
    i.SET_FLAG_N("1 constants")
    i.SET_FLAG_H("hflag_SUB craftboy")
    i.SET_FLAG_C("cflag_SUB craftboy")

    i.SET_A("tmp_SUB_A craftboy")
end
function i.SBC_A(value)
    w("#SBC_A")

    i.GET_A()

    i.LD("tmp_SBC_A craftboy", "out binary")

    i.LD("tmp2_SBC_A craftboy", "tmp_SBC_A craftboy")

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

    i.SET_FLAG_Z("zflag_SBC craftboy")
    i.SET_FLAG_N("1 constants")
    i.SET_FLAG_H("hflag_SBC craftboy")
    i.SET_FLAG_C("cflag_SBC craftboy")

    i.SET_A("tmp_SBC_A craftboy")
end
function i.AND_A(value)
    w("#AND_A")
    i.GET_A()
    i.LD("in binary", "out binary")
    w("function util:binary_split0")

    i.LD("in binary", value)
    w("function util:binary_split1")

    for b = 0, 7 do
        w("scoreboard players operation " .. b .. "_0 binary *= " .. b ..
              "_1 binary")
    end

    w("function util:binary_join0")

    -- ZFLAG
    w("scoreboard players set zflag_AND_A craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set zflag_AND_A craftboy 1")

    i.SET_A("out binary")

    i.SET_FLAG_Z("zflag_AND_A craftboy")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("1 constants")
    i.SET_FLAG_C("0 constants")
end
function i.XOR_A(value)
    w("#XOR_A")
    i.GET_A()
    i.LD("in binary", "out binary")
    w("function util:binary_split0")

    i.LD("in binary", value)
    w("function util:binary_split1")

    for b = 0, 7 do
        w("scoreboard players operation " .. b .. "_0 binary -= " .. b ..
              "_1 binary")
        w("scoreboard players operation " .. b .. "_0 binary *= " .. b ..
              "_0 binary")
    end

    w("function util:binary_join0")

    -- ZFLAG
    w("scoreboard players set zflag_XOR_A craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set zflag_XOR_A craftboy 1")

    i.SET_A("out binary")

    i.SET_FLAG_Z("zflag_XOR_A craftboy")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("0 constants")
    i.SET_FLAG_C("0 constants")
end
function i.OR_A(value)
    w("#OR_A")

    i.GET_A()
    i.LD("in binary", "out binary")
    w("function util:binary_split0")

    i.LD("in binary", value)
    w("function util:binary_split1")

    for b = 0, 7 do
        w("execute if score " .. b .. "_0 binary matches 0 if score " .. b ..
              "_1 binary matches 0 run scoreboard players set " .. b ..
              "_0 binary 0")
        w("execute if score " .. b ..
              "_1 binary matches 1 run scoreboard players set " .. b ..
              "_0 binary 1")
    end

    w("function util:binary_join0")

    -- ZFLAG
    w("scoreboard players set zflag_OR_A craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set zflag_OR_A craftboy 1")

    i.SET_A("out binary")

    i.SET_FLAG_Z("zflag_OR_A craftboy")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("0 constants")
    i.SET_FLAG_C("0 constants")
end
function i.CP_A(value)
    w("#CP_A")
    i.GET_A()

    i.LD("tmp_SUB_A craftboy", "out binary")

    i.LD("tmp2_SUB craftboy", "tmp_SUB_A craftboy")

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

    i.SET_FLAG_Z("zflag_SUB craftboy")
    i.SET_FLAG_N("1 constants")
    i.SET_FLAG_H("hflag_SUB craftboy")
    i.SET_FLAG_C("cflag_SUB craftboy")
end

function i.DI()
    w("#DI")

    w("say DI")

    w("scoreboard players set IME registers 0")
end
function i.EI()
    w("#EI")

    w("say EI")

    -- w("scoreboard players set IME registers 1")
    w("scoreboard players set SET_IME_0 craftboy 1")
end

function i.RLC(value)
    w("#RLC")
    i.LD("in binary", value)
    w("function util:binary_split0")

    i.LD("tmp_RLC craftboy", "7_0 binary")
    i.LD("7_0 binary", "6_0 binary")
    i.LD("6_0 binary", "5_0 binary")
    i.LD("5_0 binary", "4_0 binary")
    i.LD("4_0 binary", "3_0 binary")
    i.LD("3_0 binary", "2_0 binary")
    i.LD("2_0 binary", "1_0 binary")
    i.LD("1_0 binary", "0_0 binary")
    i.LD("0_0 binary", "tmp_RLC craftboy")

    w("function util:binary_join0")
    i.LD(value, "out binary")

    -- ZFLAG
    w("scoreboard players set zflag_RLC craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set zflag_RLC craftboy 1")

    i.SET_FLAG_Z("zflag_RLC craftboy")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("0 constants")
    i.SET_FLAG_C("tmp_RLC craftboy")
end
function i.RRC(value)
    w("#RRC")
    i.LD("in binary", value)
    w("function util:binary_split0")

    i.LD("tmp_RRC craftboy", "0_0 binary")
    i.LD("0_0 binary", "1_0 binary")
    i.LD("1_0 binary", "2_0 binary")
    i.LD("2_0 binary", "3_0 binary")
    i.LD("3_0 binary", "4_0 binary")
    i.LD("4_0 binary", "5_0 binary")
    i.LD("5_0 binary", "6_0 binary")
    i.LD("6_0 binary", "7_0 binary")
    i.LD("7_0 binary", "tmp_RRC craftboy")

    w("function util:binary_join0")
    i.LD(value, "out binary")

    -- ZFLAG
    w("scoreboard players set zflag_RRC craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set zflag_RRC craftboy 1")

    i.SET_FLAG_Z("zflag_RRC craftboy")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("0 constants")
    i.SET_FLAG_C("tmp_RRC craftboy")
end
function i.RL(value)
    w("#RL")

    i.LD("in binary", value)
    w("function util:binary_split0")

    i.LD("tmp_RL craftboy", "7_0 binary")
    i.LD("7_0 binary", "6_0 binary")
    i.LD("6_0 binary", "5_0 binary")
    i.LD("5_0 binary", "4_0 binary")
    i.LD("4_0 binary", "3_0 binary")
    i.LD("3_0 binary", "2_0 binary")
    i.LD("2_0 binary", "1_0 binary")
    i.LD("1_0 binary", "0_0 binary")
    i.LD("0_0 binary", "C flags")

    w("function util:binary_join0")
    i.LD(value, "out binary")

    -- ZFLAG
    w("scoreboard players set zflag_RL craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set zflag_RL craftboy 1")

    i.SET_FLAG_Z("zflag_RL craftboy")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("0 constants")
    i.SET_FLAG_C("tmp_RL craftboy")
end
function i.RR(value)
    w("#RR")

    i.LD("in binary", value)
    w("function util:binary_split0")

    i.LD("tmp_RR craftboy", "0_0 binary")
    i.LD("0_0 binary", "1_0 binary")
    i.LD("1_0 binary", "2_0 binary")
    i.LD("2_0 binary", "3_0 binary")
    i.LD("3_0 binary", "4_0 binary")
    i.LD("4_0 binary", "5_0 binary")
    i.LD("5_0 binary", "6_0 binary")
    i.LD("6_0 binary", "7_0 binary")
    i.LD("7_0 binary", "C flags")

    w("function util:binary_join0")
    i.LD(value, "out binary")

    -- ZFLAG
    w("scoreboard players set zflag_RR craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set zflag_RR craftboy 1")

    i.SET_FLAG_Z("zflag_RR craftboy")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("0 constants")
    i.SET_FLAG_C("tmp_RR craftboy")
end
function i.SLA(value)
    w("#SLA")

    i.LD("in binary", value)
    w("function util:binary_split0")

    i.LD("cflag_SLA craftboy", "7_0 binary")
    i.LD("7_0 binary", "6_0 binary")
    i.LD("6_0 binary", "5_0 binary")
    i.LD("5_0 binary", "4_0 binary")
    i.LD("4_0 binary", "3_0 binary")
    i.LD("3_0 binary", "2_0 binary")
    i.LD("2_0 binary", "1_0 binary")
    i.LD("1_0 binary", "0_0 binary")
    w("scoreboard players set 0_0 binary 0")

    w("function util:binary_join0")
    i.LD(value, "out binary")

    -- ZFLAG
    w("scoreboard players set zflag_SLA craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set zflag_SLA craftboy 1")

    i.SET_FLAG_Z("zflag_SLA craftboy")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("0 constants")
    i.SET_FLAG_C("cflag_SLA craftboy")
end
function i.SRA(value)
    w("#SRA")

    i.LD("in binary", value)
    w("function util:binary_split0")

    i.LD("cflag_SRA craftboy", "0_0 binary")
    i.LD("0_0 binary", "1_0 binary")
    i.LD("1_0 binary", "2_0 binary")
    i.LD("2_0 binary", "3_0 binary")
    i.LD("3_0 binary", "4_0 binary")
    i.LD("4_0 binary", "5_0 binary")
    i.LD("5_0 binary", "6_0 binary")
    i.LD("6_0 binary", "7_0 binary")

    w("function util:binary_join0")
    i.LD(value, "out binary")

    -- ZFLAG
    w("scoreboard players set zflag_SRA craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set zflag_SRA craftboy 1")

    i.SET_FLAG_Z("zflag_SRA craftboy")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("0 constants")
    i.SET_FLAG_C("cflag_SRA craftboy")
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

    i.SET_FLAG_Z("zflag_SWAP craftboy")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("0 constants")
    i.SET_FLAG_C("0 constants")
end
function i.SRL(value)
    w("#SRL")

    i.LD("in binary", value)
    w("function util:binary_split0")

    i.LD("tmp_SRL craftboy", "0_0 binary")
    i.LD("0_0 binary", "1_0 binary")
    i.LD("1_0 binary", "2_0 binary")
    i.LD("2_0 binary", "3_0 binary")
    i.LD("3_0 binary", "4_0 binary")
    i.LD("4_0 binary", "5_0 binary")
    i.LD("5_0 binary", "6_0 binary")
    i.LD("6_0 binary", "7_0 binary")
    i.LD("7_0 binary", "0 constants")

    w("function util:binary_join0")
    i.LD(value, "out binary")

    -- ZFLAG
    w("scoreboard players set zflag_SRL craftboy 0")
    w(
        "execute if score out binary matches 0 run scoreboard players set zflag_SRL craftboy 1")

    i.SET_FLAG_Z("zflag_SRL craftboy")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("0 constants")
    i.SET_FLAG_C("tmp_SRL craftboy")
end

function i.BIT(index, value)
    w("#BIT")
    i.GET_BIT(value, index)

    i.LD("tmp_BIT craftboy", "out binary")
    i.INV_BIT("tmp_BIT craftboy")

    i.SET_FLAG_Z("tmp_BIT craftboy")
    i.SET_FLAG_N("0 constants")
    i.SET_FLAG_H("1 constants")
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
    w("function craftboy:read")
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

    w("function craftboy:write")
end
function i.WRITE16(index, value)
    w("#WRITE16")
    i.LD("tmp_WRITE16 craftboy", index)
    i.GET_LO16(value)
    i.WRITE8("tmp_WRITE16 craftboy", "out binary")

    i.INC16("tmp_WRITE16 craftboy")
    i.GET_HI16(value)
    i.WRITE8("tmp_WRITE16 craftboy", "out binary")
end

function i.GET_LO8(value)
    w("#GET_LO8")
    i.LD("in binary", value)
    w("function util:get_lo8")
end
function i.GET_HI8(value)
    w("#GET_HI8")
    i.LD("in binary", value)
    w("function util:get_hi8")
end

function i.SET_LO8(value, lo)
    w("#SET_LO16")
    i.LD("in_reg binary", value)
    i.LD("in binary", lo)

    w("function util:set_lo8")

    i.LD(value, "out binary")
end

function i.GET_LO16(value)
    w("#GET_LO16")
    i.LD("in binary", value)
    w("function util:get_lo16")
end
function i.GET_HI16(value)
    w("#GET_HI16")
    i.LD("in binary", value)
    w("function util:get_hi16")
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
    i.LD("in_reg binary", value)
    i.LD("in binary", lo)

    w("function util:set_lo16")

    i.LD(value, "out binary")
end
function i.SET_HI16(value, hi)
    w("#SET_HI16")
    i.LD("in_reg binary", value)
    i.LD("in binary", hi)

    w("function util:set_hi16")

    i.LD(value, "out binary")
end

function i.ADD_FF00(to)
    w("#ADD_FF00")
    w("scoreboard players add " .. to .. " 65280")
end

function i.GET_A()
    w("#GET_A")
    i.GET_HI16("AF registers")
end
function i.SET_A(value)
    w("#SET_A")
    i.SET_HI16("AF registers", value)
end

function i.GET_F()
    w("#GET_F")
    i.GET_LO16("AF registers")
end
function i.SET_F(value)
    w("#SET_F")
    i.SET_LO16("AF registers", value)
end

function i.GET_B()
    w("#GET_B")
    i.GET_HI16("BC registers")
end
function i.SET_B(value)
    w("#SET_B")
    i.SET_HI16("BC registers", value)
end

function i.GET_C()
    w("#GET_C")
    i.GET_LO16("BC registers")
end
function i.SET_C(value)
    w("#SET_C")
    i.SET_LO16("BC registers", value)
end

function i.GET_D()
    w("#GET_D")
    i.GET_HI16("DE registers")
end
function i.SET_D(value)
    w("#SET_D")
    i.SET_HI16("DE registers", value)
end

function i.GET_E()
    w("#GET_E")
    i.GET_LO16("DE registers")
end
function i.SET_E(value)
    w("#SET_E")
    i.SET_LO16("DE registers", value)
end

function i.GET_H()
    w("#GET_H")
    i.GET_HI16("HL registers")
end
function i.SET_H(value)
    w("#SET_H")
    i.SET_HI16("HL registers", value)
end

function i.GET_L()
    w("#GET_L")
    i.GET_LO16("HL registers")
end
function i.SET_L(value)
    w("#SET_L")
    i.SET_LO16("HL registers", value)
end

i["GET_(HL)"] = function()
    w("#GET_(HL)")
    i.READ8("HL registers")
    i.LD("out binary", "transfer craftboy")
end
i["SET_(HL)"] = function(value)
    w("#SET_(HL)")
    i.WRITE8("HL registers", value)
end

function i.GET_BIT(value, index)
    w("#GET_BIT")
    i.LD("in binary", value)
    w("function util:binary_split0")
    i.LD("out binary", index .. "_0 binary")
end
function i.SET_BIT(value, index, bit)
    w("#SET_BIT")
    i.LD("in binary", value)
    w("function util:binary_split0")
    w("scoreboard players operation " .. index .. "_0 binary = " .. bit)
    w("function util:binary_join0")
end
function i.INV_BIT(value)
    w("#INV_BIT")
    w("scoreboard players operation tmp_INV binary = 1 constants")
    w("scoreboard players operation tmp_INV binary -= " .. value)
    w("scoreboard players operation " .. value .. " = tmp_INV binary")
end

function i.SET_FLAG_Z(value)
    w("#SET_FLAG_Z")
    i.GET_F()
    i.LD("tmp_Z craftboy", "out binary")
    i.SET_BIT("tmp_Z craftboy", 7, value)
    i.LD("tmp_Z craftboy", "out binary")
    i.SET_F("tmp_Z craftboy")
end
function i.SET_FLAG_N(value)
    w("#SET_FLAG_N")
    i.GET_F()
    i.LD("tmp_N craftboy", "out binary")
    i.SET_BIT("tmp_N craftboy", 6, value)
    i.LD("tmp_N craftboy", "out binary")
    i.SET_F("tmp_N craftboy")
end
function i.SET_FLAG_H(value)
    w("#SET_FLAG_H")
    i.GET_F()
    i.LD("tmp_H craftboy", "out binary")
    i.SET_BIT("tmp_H craftboy", 5, value)
    i.LD("tmp_H craftboy", "out binary")
    i.SET_F("tmp_H craftboy")
end
function i.SET_FLAG_C(value)
    w("#SET_FLAG_C")
    i.GET_F()
    i.LD("tmp_C craftboy", "out binary")
    i.SET_BIT("tmp_C craftboy", 4, value)
    i.LD("tmp_C craftboy", "out binary")
    i.SET_F("tmp_C craftboy")
end

-- TODO optimize by writing a specific splitter function just for flags
function i.GET_FLAGS()
    w("#GET_FLAGS")
    w('function util:split_flags')
    -- i.GET_LO16("AF registers")
    -- i.LD("in binary", "out binary")
    -- w("function util:binary_split0")
    -- i.LD("Z flags", "7_0 binary")
    -- i.LD("N flags", "6_0 binary")
    -- i.LD("H flags", "5_0 binary")
    -- i.LD("C flags", "4_0 binary")
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
