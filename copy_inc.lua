here = "./CraftBoyDatapack/"
there =
    "/home/kitten/.minecraft/saves/GB Emulator 1_18_2/datapacks/CraftBoyDatapack/"

function string.starts(String, Start)
    return string.sub(String, 1, string.len(Start)) == Start
end

function scandir(directory)
    local i, t, popen = 0, {}, io.popen
    local pfile = popen('ls -a "' .. directory .. '"')
    for filename in pfile:lines() do
        if filename ~= "." and filename ~= ".." and
            (not filename:starts("rom_") or filename == "rom_bios") then
            i = i + 1
            t[i] = filename
        end
    end
    pfile:close()
    return t
end

os.execute("rm -r \"" .. there .. "\"")
os.execute("mkdir \"" .. there .. "\"")
os.execute("cp " .. here .. "pack.mcmeta \"" .. there .. "\"")
os.execute("mkdir \"" .. there .. "data\"")
for _, dir in ipairs(scandir(here .. "data")) do
    dir = "data/" .. dir
    os.execute("cp -r " .. here .. dir .. " \"" .. there .. dir .. "\"")

    print(dir)
    -- io.read()
end
