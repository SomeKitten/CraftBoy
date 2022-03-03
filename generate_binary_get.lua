local folder = "./CraftBoyDatapack/data/craftboy/functions/util/"

for i = 0, 15 do
    local filename = folder .. "binary_get_" .. i .. ".mcfunction"
    local file = io.open(filename, "w")

    file:write("scoreboard players operation in binary %= " ..
                   math.floor(2 ^ (i + 1)) .. "\n")
    file:write("scoreboard players operation in binary /= " .. math.floor(2 ^ i))

    file:close()
end
