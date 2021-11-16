command_read = {
    "execute if score index ppu matches ",
    " store result score transfer ppu run scoreboard players get ", " ppu\n"
}
command_write = {
    "execute if score index ppu matches ", " store result score ",
    " ppu run scoreboard players get transfer ppu\n"
}

for i = 1, 10, 1 do end
