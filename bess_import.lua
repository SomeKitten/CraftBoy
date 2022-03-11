local util = require "util"

function read32little(data, offset)
    return data[offset] + data[offset + 1] * 256 + data[offset + 2] * 65536 +
               data[offset + 3] * 16777216
end

function HI(x) return math.floor(x / 256) end

function LO(x) return x % 256 end

function BITS(x)
    local r = {}
    for i = 0, 7 do
        r[i] = x % 2
        x = math.floor(x / 2)
    end
    return r
end

function board_select(index)
    if index >= 0x0000 and index <= 0x00FF then return "bios" end
    if index >= 0x0100 and index <= 0x7FFF then return "rom" end
    if index >= 0x8000 and index <= 0x9FFF then return "vram" end
    if index >= 0xA000 and index <= 0xBFFF then return "ram" end
    if index >= 0xC000 and index <= 0xDFFF then return "wram" end
    if index >= 0xFE00 and index <= 0xFE9F then return "oam" end
    if index >= 0xFF00 and index <= 0xFF7F then return "io" end
    if index >= 0xFF80 and index <= 0xFFFE then return "hram" end
    if index == 0xFFFF then return "interrupt" end

    return "undefined"
end

local state = {}

local directory = "/home/kitten/プロジェクト/Gameboy/Badboy/tests/"
state.filename = "marioland2glitch.s0"

state.file = io.open(directory .. state.filename, "r")
state.data = {}

util.file_to_bytes(state.file, state.data, 0x0000)

state.file:close()

local core_block = 0

-- TODO redo core block detection
local i = 0
while true do
    if state.data[i] == 0x47 and state.data[i + 1] == 0x44 and state.data[i + 2] ==
        0x42 then
        if core_block ~= 0 then
            print("ERROR: Multiple core blocks found")
        end

        core_block = i - 0x04
    end

    i = i + 1

    if state.data[i] == nil then break end
end

local PC = state.data[core_block + 0x08] + state.data[core_block + 0x08 + 1] *
               256
local AF = state.data[core_block + 0x0A] + state.data[core_block + 0x0A + 1] *
               256
local BC = state.data[core_block + 0x0C] + state.data[core_block + 0x0C + 1] *
               256
local DE = state.data[core_block + 0x0E] + state.data[core_block + 0x0E + 1] *
               256
local HL = state.data[core_block + 0x10] + state.data[core_block + 0x10 + 1] *
               256
local SP = state.data[core_block + 0x12] + state.data[core_block + 0x12 + 1] *
               256
local IME = state.data[core_block + 0x14] % 2
local IE = state.data[core_block + 0x15]
local IF = state.data[core_block + 0x16]
local HALT = state.data[core_block + 0x17] == 1 and 1 or 0

local WRAM_size = read32little(state.data, core_block + 0x98)
local WRAM_offset = read32little(state.data, core_block + 0x9C)

local VRAM_size = read32little(state.data, core_block + 0xA0)
local VRAM_offset = read32little(state.data, core_block + 0xA4)

local SRAM_size = read32little(state.data, core_block + 0xA8)
local SRAM_offset = read32little(state.data, core_block + 0xAC)

local OAM_size = read32little(state.data, core_block + 0xB0)
local OAM_offset = read32little(state.data, core_block + 0xB4)

local HRAM_size = read32little(state.data, core_block + 0xB8)
local HRAM_offset = read32little(state.data, core_block + 0xBC)

there =
    "/home/kitten/.minecraft/saves/GB Emulator 1_18_2/datapacks/CraftBoyDatapack/data/"
therefile = "craftboy/functions/load_state.mcfunction"

local mcfunction = io.open(there .. therefile, "w")
mcfunction:write("say LOADING " .. state.filename .. "\n")

for j = 0, 0x7F do
    local index = 0xFF00 + j
    mcfunction:write("scoreboard players set index craftboy " .. index .. "\n")
    mcfunction:write("scoreboard players set transfer craftboy " ..
                         state.data[core_block + 0x18 + j] .. "\n")
    mcfunction:write("function craftboy:write/all/main\n")
end

for j = 0, WRAM_size - 1 do
    local index = 0xC000 + j
    mcfunction:write("scoreboard players set " .. index .. " " ..
                         board_select(index) .. " " ..
                         state.data[WRAM_offset + j] .. "\n")
end

for j = 0, VRAM_size - 1 do
    local index = 0x8000 + j
    mcfunction:write("scoreboard players set " .. index .. " " ..
                         board_select(index) .. " " ..
                         state.data[VRAM_offset + j] .. "\n")
end

for j = 0, SRAM_size - 1 do
    local index = j
    mcfunction:write("scoreboard players set " .. index .. " sram " ..
                         state.data[SRAM_offset + j] .. "\n")
end

for j = 0, OAM_size - 1 do
    local index = 0xFE00 + j
    mcfunction:write("scoreboard players set " .. index .. " " ..
                         board_select(index) .. " " ..
                         state.data[OAM_offset + j] .. "\n")
end

for j = 0, HRAM_size - 1 do
    local index = 0xFF80 + j
    mcfunction:write("scoreboard players set " .. index .. " " ..
                         board_select(index) .. " " ..
                         state.data[HRAM_offset + j] .. "\n")
end

mcfunction:write("scoreboard players set PC registers " .. PC .. "\n")
mcfunction:write("scoreboard players set A registers " .. HI(AF) .. "\n")

local flags = BITS(LO(AF))
mcfunction:write("scoreboard players set Z flags " .. flags[7] .. "\n")
mcfunction:write("scoreboard players set N flags " .. flags[6] .. "\n")
mcfunction:write("scoreboard players set H flags " .. flags[5] .. "\n")
mcfunction:write("scoreboard players set C flags " .. flags[4] .. "\n")

mcfunction:write("scoreboard players set B registers " .. HI(BC) .. "\n")
mcfunction:write("scoreboard players set C registers " .. LO(BC) .. "\n")
mcfunction:write("scoreboard players set D registers " .. HI(DE) .. "\n")
mcfunction:write("scoreboard players set E registers " .. LO(DE) .. "\n")
mcfunction:write("scoreboard players set H registers " .. HI(HL) .. "\n")
mcfunction:write("scoreboard players set L registers " .. LO(HL) .. "\n")
mcfunction:write("scoreboard players set SP registers " .. SP .. "\n")
mcfunction:write("scoreboard players set IME registers " .. IME .. "\n")
mcfunction:write("scoreboard players set HALT registers " .. HALT .. "\n")
mcfunction:write("scoreboard players set 65535 interrupt " .. IE .. "\n")
mcfunction:write("scoreboard players set 65295 io " .. IF .. "\n")

local mbc_block = 0

i = 0
while true do
    if state.data[i] == 0x4D and state.data[i + 1] == 0x42 and state.data[i + 2] ==
        0x43 and state.data[i + 3] == 0x20 then mbc_block = i + 8 end

    i = i + 1

    if state.data[i] == nil then break end
end

if mbc_block ~= 0 then
    mbc_block_len = read32little(state.data, mbc_block - 0x04)

    if mbc_block_len % 3 ~= 0 then print("WRONG SIZE MBC BLOCK") end

    for j = 0, math.floor(mbc_block_len / 3) - 1 do
        mcfunction:write("scoreboard players set index craftboy " ..
                             state.data[mbc_block + j * 3] +
                             state.data[mbc_block + j * 3 + 1] * 256 .. "\n")
        mcfunction:write("scoreboard players set transfer craftboy " ..
                             state.data[mbc_block + j * 3 + 2] .. "\n")
        mcfunction:write("function craftboy:write/all/main\n")
    end
end
