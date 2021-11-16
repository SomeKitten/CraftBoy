command_read = {
    "execute if score index craftboy matches ",
    " store result score transfer craftboy run scoreboard players get ", " ",
    "\n"
}
command_write = {
    "execute if score index craftboy matches ", " store result score ", " ",
    " run scoreboard players get transfer craftboy\n"
}

read_mcfunction = io.open(
                      "./CraftBoyDatapack/data/craftboy/functions/read.mcfunction",
                      "w")
read_rom_mcfunction = io.open(
                          "./CraftBoyDatapack/data/craftboy/functions/read_rom.mcfunction",
                          "w")
read_bios_mcfunction = io.open(
                           "./CraftBoyDatapack/data/craftboy/functions/read_bios.mcfunction",
                           "w")
read_vram_mcfunction = io.open(
                           "./CraftBoyDatapack/data/craftboy/functions/read_vram.mcfunction",
                           "w")
read_tile_vram_mcfunction = io.open(
                                "./CraftBoyDatapack/data/craftboy/functions/read_tile_vram.mcfunction",
                                "w")
read_tile_map_vram_mcfunction = io.open(
                                    "./CraftBoyDatapack/data/craftboy/functions/read_tile_map_vram.mcfunction",
                                    "w")
read_ram_mcfunction = io.open(
                          "./CraftBoyDatapack/data/craftboy/functions/read_ram.mcfunction",
                          "w")
read_wram_mcfunction = io.open(
                           "./CraftBoyDatapack/data/craftboy/functions/read_wram.mcfunction",
                           "w")
read_oam_mcfunction = io.open(
                          "./CraftBoyDatapack/data/craftboy/functions/read_oam.mcfunction",
                          "w")
read_io_mcfunction = io.open(
                         "./CraftBoyDatapack/data/craftboy/functions/read_io.mcfunction",
                         "w")
read_hram_mcfunction = io.open(
                           "./CraftBoyDatapack/data/craftboy/functions/read_hram.mcfunction",
                           "w")
read_interrupt_mcfunction = io.open(
                                "./CraftBoyDatapack/data/craftboy/functions/read_interrupt.mcfunction",
                                "w")

write_mcfunction = io.open(
                       "./CraftBoyDatapack/data/craftboy/functions/write.mcfunction",
                       "w")
write_vram_mcfunction = io.open(
                            "./CraftBoyDatapack/data/craftboy/functions/write_vram.mcfunction",
                            "w")
write_tile_vram_mcfunction = io.open(
                                 "./CraftBoyDatapack/data/craftboy/functions/write_tile_vram.mcfunction",
                                 "w")
write_tile_map_vram_mcfunction = io.open(
                                     "./CraftBoyDatapack/data/craftboy/functions/write_tile_map_vram.mcfunction",
                                     "w")
write_ram_mcfunction = io.open(
                           "./CraftBoyDatapack/data/craftboy/functions/write_ram.mcfunction",
                           "w")
write_wram_mcfunction = io.open(
                            "./CraftBoyDatapack/data/craftboy/functions/write_wram.mcfunction",
                            "w")
write_oam_mcfunction = io.open(
                           "./CraftBoyDatapack/data/craftboy/functions/write_oam.mcfunction",
                           "w")
write_io_mcfunction = io.open(
                          "./CraftBoyDatapack/data/craftboy/functions/write_io.mcfunction",
                          "w")
write_hram_mcfunction = io.open(
                            "./CraftBoyDatapack/data/craftboy/functions/write_hram.mcfunction",
                            "w")
write_interrupt_mcfunction = io.open(
                                 "./CraftBoyDatapack/data/craftboy/functions/write_interrupt.mcfunction",
                                 "w")

read_mcfunction:write("execute if score index craftboy matches " .. 0x0000 ..
                          ".." .. 0x00FF .. " run function craftboy:read_bios\n")
-- MAKE DYNAMIC
read_mcfunction:write("execute if score index craftboy matches " .. 0x0100 ..
                          ".." .. 0x7FFF .. " run function craftboy:read_rom\n")
read_mcfunction:write("execute if score index craftboy matches " .. 0x8000 ..
                          ".." .. 0x9FFF .. " run function craftboy:read_vram\n")
read_mcfunction:write("execute if score index craftboy matches " .. 0xA000 ..
                          ".." .. 0xBFFF .. " run function craftboy:read_ram\n")
read_mcfunction:write("execute if score index craftboy matches " .. 0xC000 ..
                          ".." .. 0xDFFF .. " run function craftboy:read_wram\n")
read_mcfunction:write("execute if score index craftboy matches " .. 0xFE00 ..
                          ".." .. 0xFE9F .. " run function craftboy:read_oam\n")
read_mcfunction:write("execute if score index craftboy matches " .. 0xFF00 ..
                          ".." .. 0xFF7F .. " run function craftboy:read_io\n")
read_mcfunction:write("execute if score index craftboy matches " .. 0xFF80 ..
                          ".." .. 0xFFFE .. " run function craftboy:read_hram\n")
read_mcfunction:write("execute if score index craftboy matches " .. 0xFFFF ..
                          " run function craftboy:read_interrupt\n")

write_mcfunction:write("execute if score index craftboy matches " .. 0x8000 ..
                           ".." .. 0x9FFF ..
                           " run function craftboy:write_vram\n")
write_mcfunction:write("execute if score index craftboy matches " .. 0xA000 ..
                           ".." .. 0xBFFF ..
                           " run function craftboy:write_ram\n")
write_mcfunction:write("execute if score index craftboy matches " .. 0xC000 ..
                           ".." .. 0xDFFF ..
                           " run function craftboy:write_wram\n")
write_mcfunction:write("execute if score index craftboy matches " .. 0xFE00 ..
                           ".." .. 0xFE9F ..
                           " run function craftboy:write_oam\n")
write_mcfunction:write("execute if score index craftboy matches " .. 0xFF00 ..
                           ".." .. 0xFF7F .. " run function craftboy:write_io\n")
write_mcfunction:write("execute if score index craftboy matches " .. 0xFF80 ..
                           ".." .. 0xFFFE ..
                           " run function craftboy:write_hram\n")
write_mcfunction:write("execute if score index craftboy matches " .. 0xFFFF ..
                           " run function craftboy:write_interrupt\n")

for i = 0x0000, 0x00FF do
    read_bios_mcfunction:write(command_read[1] .. i .. command_read[2] .. i ..
                                   command_read[3] .. "bios" .. command_read[4])
end
for i = 0x0000, 0x7FFF do
    read_rom_mcfunction:write(command_read[1] .. i .. command_read[2] .. i ..
                                  command_read[3] .. "rom" .. command_read[4])
end
for i = 0x8000, 0x9FFF do
    read_vram_mcfunction:write(command_read[1] .. i .. command_read[2] .. i ..
                                   command_read[3] .. "vram" .. command_read[4])
end
for i = 0x8000, 0x8FFF do
    read_tile_vram_mcfunction:write(
        command_read[1] .. i .. command_read[2] .. i .. command_read[3] ..
            "vram" .. command_read[4])
end
for i = 0x9800, 0x9BFF do
    read_tile_map_vram_mcfunction:write(
        command_read[1] .. i .. command_read[2] .. i .. command_read[3] ..
            "vram" .. command_read[4])
end
for i = 0xA000, 0xBFFF do
    read_ram_mcfunction:write(command_read[1] .. i .. command_read[2] .. i ..
                                  command_read[3] .. "ram" .. command_read[4])
end
for i = 0xC000, 0xDFFF do
    read_wram_mcfunction:write(command_read[1] .. i .. command_read[2] .. i ..
                                   command_read[3] .. "wram" .. command_read[4])
end
for i = 0xFE00, 0xFE9F do
    read_oam_mcfunction:write(command_read[1] .. i .. command_read[2] .. i ..
                                  command_read[3] .. "oam" .. command_read[4])
end
for i = 0xFF00, 0xFF7F do
    read_io_mcfunction:write(command_read[1] .. i .. command_read[2] .. i ..
                                 command_read[3] .. "io" .. command_read[4])
end
for i = 0xFF80, 0xFFFE do
    read_hram_mcfunction:write(command_read[1] .. i .. command_read[2] .. i ..
                                   command_read[3] .. "hram" .. command_read[4])
end
read_interrupt_mcfunction:write(command_read[1] .. 0xFFFF .. command_read[2] ..
                                    0xFFFF .. command_read[3] .. "interrupt" ..
                                    command_read[4])

for i = 0x8000, 0x9FFF do
    write_vram_mcfunction:write(
        command_write[1] .. i .. command_write[2] .. i .. command_write[3] ..
            "vram" .. command_write[4])
end
for i = 0xA000, 0xBFFF do
    write_ram_mcfunction:write(command_write[1] .. i .. command_write[2] .. i ..
                                   command_write[3] .. "ram" .. command_write[4])
end
for i = 0xC000, 0xDFFF do
    write_wram_mcfunction:write(
        command_write[1] .. i .. command_write[2] .. i .. command_write[3] ..
            "wram" .. command_write[4])
end
for i = 0xFE00, 0xFE9F do
    write_oam_mcfunction:write(command_write[1] .. i .. command_write[2] .. i ..
                                   command_write[3] .. "oam" .. command_write[4])
end
for i = 0xFF00, 0xFF7F do
    write_io_mcfunction:write(command_write[1] .. i .. command_write[2] .. i ..
                                  command_write[3] .. "io" .. command_write[4])
end
for i = 0xFF80, 0xFFFE do
    write_hram_mcfunction:write(
        command_write[1] .. i .. command_write[2] .. i .. command_write[3] ..
            "hram" .. command_write[4])
end
write_interrupt_mcfunction:write(
    command_write[1] .. 0xFFFF .. command_write[2] .. 0xFFFF .. command_write[3] ..
        "interrupt" .. command_write[4])

read_mcfunction:close()
read_vram_mcfunction:close()
read_ram_mcfunction:close()
read_wram_mcfunction:close()
read_oam_mcfunction:close()
read_io_mcfunction:close()
read_hram_mcfunction:close()
read_interrupt_mcfunction:close()

write_mcfunction:close()
write_vram_mcfunction:close()
write_ram_mcfunction:close()
write_wram_mcfunction:close()
write_oam_mcfunction:close()
write_io_mcfunction:close()
write_hram_mcfunction:close()
write_interrupt_mcfunction:close()
