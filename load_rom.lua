here = "./CraftBoyDatapack/data/"
there =
    "/home/kitten/.minecraft/saves/GB Emulator 1_18_2/datapacks/CraftBoyDatapack/data/"

dir = "rom_" .. "rom_64mb"

os.execute("rm -r \"" .. there .. dir .. "\"")
os.execute("cp -r " .. here .. dir .. " \"" .. there .. dir .. "\"")
