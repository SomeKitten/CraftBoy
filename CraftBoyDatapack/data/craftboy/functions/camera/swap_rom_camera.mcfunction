scoreboard players operation rom_bank craftboy = transfer craftboy
scoreboard players operation rom_bank craftboy %= 256 constants

# TODO mem->selected_rom &= GameBoy.Emulator.ROM_Banks - 1;

scoreboard players operation bank craftboy = rom_bank craftboy

function craftboy:mbc/swap_rom
