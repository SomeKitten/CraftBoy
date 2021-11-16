local u = {}

u.hex1 = "0x%01X"
u.hex2 = "0x%02X"
u.hex4 = "0x%04X"
u.oct3 = "%03o"

function u.get_name()
    local name = ""
    for i = 0x0134, 0x0143 do
        if rom.data[i] == 0 then break end
        name = name .. string.char(rom.data[i])
    end
    return name
end

u.file_to_bytes = function(file, byte_array, start)
    local byte = file:read(1)
    local i = 0
    while byte do
        byte_array[start + i] = byte:byte()

        byte = file:read(1)

        i = i + 1
    end
end

return u
