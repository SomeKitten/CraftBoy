local lookups = {}
local insts = require("instructions")

lookups.r = {}
lookups.r[0] = "B"
lookups.r[1] = "C"
lookups.r[2] = "D"
lookups.r[3] = "E"
lookups.r[4] = "H"
lookups.r[5] = "L"
lookups.r[6] = "(HL)"
lookups.r[7] = "A"

lookups.rp = {}
lookups.rp[0] = "BC registers"
lookups.rp[1] = "DE registers"
lookups.rp[2] = "HL registers"
lookups.rp[3] = "SP registers"

lookups.rp2 = {}
lookups.rp2[0] = "BC registers"
lookups.rp2[1] = "DE registers"
lookups.rp2[2] = "HL registers"
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
