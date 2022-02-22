here = "./CraftBoyDatapack/"
there =
    "/home/kitten/.minecraft/saves/GB Emulator 1_18_1/datapacks/CraftBoyDatapack/"

os.execute("rm -r \"" .. there .. "\"")
os.execute("cp -r " .. here .. " \"" .. there .. "\"")
