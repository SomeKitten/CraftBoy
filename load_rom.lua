here = "./CraftBoyDatapack/data/"
there =
    "/home/kitten/.minecraft/saves/New World/datapacks/CraftBoyDatapack/data/"

dir = "rom_" .. "m3_lcdc_win_en_change_multiple"

os.execute("cp -r " .. here .. dir .. " \"" .. there .. dir .. "\"")
