hex =
    "CE ED 66 66 CC 0D 00 0B 03 73 00 83 00 0C 00 0D 00 08 11 1F 88 89 00 0E DC CC 6E E6 DD DD D9 99 BB BB 67 63 6E 0E EC CC DD DC 99 9F BB B9 33 3E"

for i = 1, #hex / 3, 3 do print(tonumber(hex:sub(i, i + 1), 16)) end
