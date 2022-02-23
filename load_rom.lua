here = "./CraftBoyDatapack/data/"
there =
    "/home/kitten/.minecraft/saves/GB Emulator 1_18_1/datapacks/CraftBoyDatapack/data/"

dir = "rom_" .. "opsphl"

os.execute("rm -r \"" .. there .. dir .. "\"")
os.execute("cp -r " .. here .. dir .. " \"" .. there .. dir .. "\"")
os.execute("cp " .. here .. dir .. "/functions/bank_*.mcfunction \"" .. there ..
               "mbc/functions/\"")
