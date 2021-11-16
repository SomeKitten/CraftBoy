local read_directory = "./CraftBoyDatapack/data/read/functions/"
local write_directory = "./CraftBoyDatapack/data/write/functions/"

command_read = {
    "execute if score index craftboy matches ",
    " store result score transfer craftboy run scoreboard players get ", " ",
    "\n"
}
command_write = {
    "execute if score index craftboy matches ", " store result score ", " ",
    " run scoreboard players get transfer craftboy\n"
}

local recursions = 0

function recursive(depth, unique_name, scoreboard, min, max)
    local len = math.floor((max - min) / 2)
    if len * 2 >= 4 then
        local filename = unique_name .. "_" .. depth .. "_" .. recursions

        local read_file = io.open(read_directory .. filename .. ".mcfunction",
                                  "w")
        local write_file = io.open(write_directory .. filename .. ".mcfunction",
                                   "w")

        local child_filename = unique_name .. "_" .. (depth + 1) .. "_" ..
                                   recursions
        read_file:write("execute if score index craftboy matches " .. min ..
                            ".." .. (min + len) .. " run function read:" ..
                            child_filename .. "\n")
        write_file:write("execute if score index craftboy matches " .. min ..
                             ".." .. (min + len) .. " run function write:" ..
                             child_filename .. "\n")

        read_file:close()
        write_file:close()
        recursive(depth + 1, unique_name, scoreboard, min, min + len)

        local read_file = io.open(read_directory .. filename .. ".mcfunction",
                                  "a")
        local write_file = io.open(write_directory .. filename .. ".mcfunction",
                                   "a")

        child_filename = unique_name .. "_" .. (depth + 1) .. "_" .. recursions
        read_file:write("execute if score index craftboy matches " ..
                            (min + len + 1) .. ".." .. max ..
                            " run function read:" .. child_filename .. "\n")
        write_file:write("execute if score index craftboy matches " ..
                             (min + len + 1) .. ".." .. max ..
                             " run function write:" .. child_filename .. "\n")

        read_file:close()
        write_file:close()
        recursive(depth + 1, unique_name, scoreboard, min + len + 1, max)
    else
        local read_file = io.open(
                              read_directory .. unique_name .. "_" .. depth ..
                                  "_" .. recursions .. ".mcfunction", "w")
        local write_file = io.open(write_directory .. unique_name .. "_" ..
                                       depth .. "_" .. recursions ..
                                       ".mcfunction", "w")

        for i = min, max do
            if i == 0xFF00 then
                read_file:write(
                    "execute if score index craftboy matches " .. i ..
                        " store result score transfer craftboy run scoreboard players get buttons craftboy\n")
                -- elseif i == 0xFF44 then
                --     read_file:write(
                --         "execute if score index craftboy matches " .. i ..
                --             " run scoreboard players set transfer craftboy " .. 0x90 ..
                --             "\n")

                -- elseif i == 0xFF44 then
                --     read_file:write(
                --         "execute if score index craftboy matches " .. i ..
                --             " run scoreboard players add LY registers 1\n")
                --     read_file:write(
                --         "execute if score index craftboy matches " .. i ..
                --             " run execute if score LY registers matches 154.. run scoreboard players set LY registers 0\n")
                --     read_file:write(
                --         "execute if score index craftboy matches " .. i ..
                --             " run scoreboard players operation transfer craftboy = LY registers\n")
            else
                read_file:write(command_read[1] .. i .. command_read[2] .. i ..
                                    command_read[3] .. scoreboard ..
                                    command_read[4])
            end

            if i == 0xFF50 then
                write_file:write(
                    "execute if score index craftboy matches " .. i ..
                        " run function unmap:boot\n")
                -- elseif i == 0xFF44 then
                --     write_file:write(
                --         "execute if score index craftboy matches " .. i ..
                --             " run scoreboard players set LY registers 0\n")
            else
                write_file:write(
                    command_write[1] .. i .. command_write[2] .. i ..
                        command_write[3] .. scoreboard .. command_write[4])
            end
        end

        read_file:close()

        recursions = recursions + 1
    end
end

recursive(0, "bios", "bios", 0x0000, 0x00FF)
recursions = 0
recursive(0, "rom", "rom", 0x0000, 0x7FFF)
recursions = 0
recursive(0, "tile_vram", "vram", 0x8000, 0x97FF)
recursions = 0
recursive(0, "tile_map_vram", "vram", 0x9800, 0x9BFF)
recursions = 0
recursive(0, "ram", "ram", 0xA000, 0xBFFF)
recursions = 0
recursive(0, "wram", "wram", 0xC000, 0xDFFF)
recursions = 0
recursive(0, "oam", "oam", 0xFE00, 0xFE9F)
recursions = 0
recursive(0, "io", "io", 0xFF00, 0xFF7F)
recursions = 0
recursive(0, "hram", "hram", 0xFF80, 0xFFFE)
recursions = 0
recursive(0, "interrupt", "interrupt", 0xFFFF, 0xFFFF)
