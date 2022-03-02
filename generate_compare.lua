os.execute("rm -r ./CraftBoyDatapack/data/compare/functions")
os.execute("mkdir ./CraftBoyDatapack/data/compare")
os.execute("mkdir ./CraftBoyDatapack/data/compare/functions")

-- 256 - 47932
-- 257 - 47933
start = 0

txt_name = "06.txt"

filename =
    "/home/kitten/プロジェクト/Gameboy/Badboy/tests/blargg/cpu_instrs/individual/" ..
        txt_name

in_file = io.open(filename, "r")

out_file = io.open(
               "./CraftBoyDatapack/data/compare/functions/parity.mcfunction",
               "w")

txt_template = {"AF: ", " BC: ", " DE: ", " HL: ", " SP: ", " PC: "}

txt_file = io.open("./" .. txt_name, "w")

local directory = "./CraftBoyDatapack/data/compare/functions/"

local recursions = 0

function recursive(depth, prefix, min, max)
    local len = math.floor((max - min) / 2)
    if len * 2 >= 4 then
        local filename = prefix .. depth .. "_" .. recursions

        local file = io.open(directory .. filename .. ".mcfunction", "w")

        local child_filename = prefix .. (depth + 1) .. "_" .. recursions
        file:write("execute if score inst_count registers matches " .. min ..
                       ".." .. (min + len) .. " run function compare:" ..
                       child_filename .. "\n")

        file:close()
        recursive(depth + 1, prefix, min, min + len)

        file = io.open(directory .. filename .. ".mcfunction", "a")

        child_filename = prefix .. (depth + 1) .. "_" .. recursions
        file:write("execute if score inst_count registers matches " ..
                       (min + len + 1) .. ".." .. max ..
                       " run function compare:" .. child_filename .. "\n")

        file:close()
        recursive(depth + 1, prefix, min + len + 1, max)
    else
        local filename = prefix .. depth .. "_" .. recursions

        local file = io.open(directory .. filename .. ".mcfunction", "w")

        for i = min, max do file:write(lines[i - start]) end

        file:close()

        recursions = recursions + 1
    end
end

i = 0

line = in_file:read()

AF = tonumber(line:sub(4, 5), 16) * 256 + tonumber(line:sub(10, 11), 16)
BC = tonumber(line:sub(16, 17), 16) * 256 + tonumber(line:sub(22, 23), 16)
DE = tonumber(line:sub(28, 29), 16) * 256 + tonumber(line:sub(34, 35), 16)
HL = tonumber(line:sub(40, 41), 16) * 256 + tonumber(line:sub(46, 47), 16)
SP = tonumber(line:sub(53, 56), 16)
PC = tonumber(line:sub(65, 68), 16)

lines = {}

while line ~= nil do
    AF = tonumber(line:sub(4, 5), 16) * 256 + tonumber(line:sub(10, 11), 16)
    BC = tonumber(line:sub(16, 17), 16) * 256 + tonumber(line:sub(22, 23), 16)
    DE = tonumber(line:sub(28, 29), 16) * 256 + tonumber(line:sub(34, 35), 16)
    HL = tonumber(line:sub(40, 41), 16) * 256 + tonumber(line:sub(46, 47), 16)
    SP = tonumber(line:sub(53, 56), 16)
    PC = tonumber(line:sub(65, 68), 16)

    txt_file:write(txt_template[1] .. AF .. txt_template[2] .. BC ..
                       txt_template[3] .. DE .. txt_template[4] .. HL ..
                       txt_template[5] .. SP .. txt_template[6] .. PC .. "\n")

    lines[i] = "execute if score inst_count registers matches " .. i + start ..
                   " if score AF compare matches " .. AF ..
                   " if score BC compare matches " .. BC ..
                   " if score DE compare matches " .. DE ..
                   " if score HL compare matches " .. HL ..
                   " if score SP registers matches " .. SP ..
                   " if score PC registers matches " .. PC ..
                   " run scoreboard players set DEBUG craftboy 0\n"

    line = in_file:read()
    i = i + 1
    if i >= 1000000 then break end
end

out_file:write("scoreboard players set DEBUG craftboy 1\n")

out_file:write([[
scoreboard players operation AF compare = A registers
scoreboard players operation AF compare *= 2 constants
scoreboard players operation AF compare += Z flags
scoreboard players operation AF compare *= 2 constants
scoreboard players operation AF compare += N flags
scoreboard players operation AF compare *= 2 constants
scoreboard players operation AF compare += H flags
scoreboard players operation AF compare *= 2 constants
scoreboard players operation AF compare += C flags
scoreboard players operation AF compare *= 16 constants

scoreboard players operation BC compare = B registers
scoreboard players operation BC compare *= 256 constants
scoreboard players operation BC compare += C registers

scoreboard players operation DE compare = D registers
scoreboard players operation DE compare *= 256 constants
scoreboard players operation DE compare += E registers

scoreboard players operation HL compare = H registers
scoreboard players operation HL compare *= 256 constants
scoreboard players operation HL compare += L registers
]])

out_file:write("function compare:0_0\n")

out_file:write("execute if score inst_count registers matches " .. i ..
                   ".. run say Compare finished!\n")

recursive(0, "", start, start + #lines)

in_file:close()
out_file:close()
txt_file:close()
