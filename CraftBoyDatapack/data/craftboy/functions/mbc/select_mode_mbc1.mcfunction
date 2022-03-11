say SELECTING MODE
tellraw @a [{"score":{"name":"transfer","objective":"craftboy"}}]

function craftboy:mbc/save_ram

scoreboard players operation bank_mode craftboy = transfer craftboy
scoreboard players operation bank_mode craftboy %= 2 constants

function craftboy:mbc/swap_rom_mbc1
function craftboy:mbc/swap_ram_mbc1
