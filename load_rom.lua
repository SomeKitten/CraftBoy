here = "./CraftBoyDatapack/data/"
there =
    "/home/kitten/.minecraft/saves/New World/datapacks/CraftBoyDatapack/data/"

dir = "rom_" .. "dmg-acid2"

os.execute("cp -r " .. here .. dir .. " \"" .. there .. dir .. "\"")
