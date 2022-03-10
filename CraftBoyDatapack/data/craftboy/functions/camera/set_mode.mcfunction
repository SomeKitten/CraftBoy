scoreboard players operation camera_mode craftboy = transfer craftboy

scoreboard players operation camera_mode craftboy /= 16 constants
scoreboard players operation camera_mode craftboy %= 2 constants

execute if score camera_mode craftboy matches 0 run scoreboard players operation ram_bank craftboy = transfer craftboy

# invalid bank so it won't affect actual values
execute if score camera_mode craftboy matches 1 run scoreboard players set ram_bank craftboy 43000000

function craftboy:camera/save_swap_ram
