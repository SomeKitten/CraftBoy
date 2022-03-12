function craftboy:mbc/ram_save

scoreboard players operation rom1_bank craftboy = bank2 craftboy
scoreboard players operation rom1_bank craftboy *= 256 constants
scoreboard players operation rom1_bank craftboy += bank1 craftboy

function craftboy:mbc/rom1_update
function craftboy:mbc/ram_load
