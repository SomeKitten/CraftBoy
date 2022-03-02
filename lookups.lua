local lookups = {}
local insts = require("instructions")

lookups.r = {}
lookups.r[0] = "B registers"
lookups.r[1] = "C registers"
lookups.r[2] = "D registers"
lookups.r[3] = "E registers"
lookups.r[4] = "H registers"
lookups.r[5] = "L registers"
lookups.r[6] = "HL registers"
lookups.r[7] = "A registers"

lookups.rp = {}
lookups.rp[0] = {"B registers", "C registers"}
lookups.rp[1] = {"D registers", "E registers"}
lookups.rp[2] = {"H registers", "L registers"}
lookups.rp[3] = "SP registers"

lookups.rp2 = {}
lookups.rp2[0] = {"B registers", "C registers"}
lookups.rp2[1] = {"D registers", "E registers"}
lookups.rp2[2] = {"H registers", "L registers"}
lookups.rp2[3] = "AF registers"

lookups.cc = {}
lookups.cc[0] = "Z flags matches 0" -- NZF
lookups.cc[1] = "Z flags matches 1" -- ZF
lookups.cc[2] = "C flags matches 0" -- NCF
lookups.cc[3] = "C flags matches 1" -- CF

lookups.alu = {}
lookups.alu[0] = "ADD_A"
lookups.alu[1] = "ADC_A"
lookups.alu[2] = "SUB_A"
lookups.alu[3] = "SBC_A"
lookups.alu[4] = "AND_A"
lookups.alu[5] = "XOR_A"
lookups.alu[6] = "OR_A"
lookups.alu[7] = "CP_A"

lookups.rot = {}
lookups.rot[0] = "RLC"
lookups.rot[1] = "RRC"
lookups.rot[2] = "RL"
lookups.rot[3] = "RR"
lookups.rot[4] = "SLA"
lookups.rot[5] = "SRA"
lookups.rot[6] = "SWAP"
lookups.rot[7] = "SRL"

return lookups
