function craftboy:mbc/save_ram

scoreboard players operation ram_bank craftboy = transfer craftboy
# TODO mem->selected_ram = value & (GameBoy.Emulator.RAM_Banks - 1);

function craftboy:mbc/swap_ram
