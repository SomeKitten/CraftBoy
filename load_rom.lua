here = "./CraftBoyDatapack/data/"
there =
    "/home/kitten/.minecraft/saves/New World/datapacks/CraftBoyDatapack/data/"

dir = "rom_" .. "two"

os.execute("cp -r " .. here .. dir .. " \"" .. there .. dir .. "\"")
