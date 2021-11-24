here = "./CraftBoyDatapack/data/"
there =
    "/home/kitten/.minecraft/saves/New World/datapacks/CraftBoyDatapack/data/"

dir = "rom_" .. "drmario"

os.execute("rm -r \"" .. there .. dir .. "\"")
os.execute("cp -r " .. here .. dir .. " \"" .. there .. dir .. "\"")
os.execute("cp " .. here .. dir .. "/functions/bank_*.mcfunction \"" .. there ..
               "mbc/functions/\"")
