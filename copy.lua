here = "./CraftBoyDatapack/"
there =
    "/home/kitten/.minecraft/saves/_New_ CraftBoy/datapacks/CraftBoyDatapack/"

os.execute("rm -r \"" .. there .. "\"")
os.execute("cp -r " .. here .. " \"" .. there .. "\"")
