execute as @e[name="inner_screen_copy"] at @s run tp @s ~ ~ 0

execute as @e[name="inner_screen_copy"] at @s store result entity @s Pos[0] double 1 run scoreboard players get 65347 io

scoreboard players set SCY ppu 255
scoreboard players operation SCY ppu -= 65346 io
scoreboard players operation SCY ppu -= 144 constants
execute as @e[name="inner_screen_copy"] at @s store result entity @s Pos[2] double -1 run scoreboard players get SCY ppu

execute as @e[name="inner_screen_paste"] at @s run fill ~ ~ ~ ~160 ~144 ~ air


execute as @e[name="inner_screen_copy"] at @s run clone ~-256 ~ ~256 ~-96 ~ ~400 0 0 0
execute as @e[name="inner_screen_paste"] at @s run clone 0 0 0 160 0 144 ~ ~ ~ masked

execute as @e[name="inner_screen_copy"] at @s run clone ~ ~ ~256 ~160 ~ ~400 0 0 0
execute as @e[name="inner_screen_paste"] at @s run clone 0 0 0 160 0 144 ~ ~ ~ masked

execute as @e[name="inner_screen_copy"] at @s run clone ~256 ~ ~256 ~416 ~ ~400 0 0 0
execute as @e[name="inner_screen_paste"] at @s run clone 0 0 0 160 0 144 ~ ~ ~ masked


execute as @e[name="inner_screen_copy"] at @s run clone ~-256 ~ ~ ~-96 ~ ~144 0 0 0
execute as @e[name="inner_screen_paste"] at @s run clone 0 0 0 160 0 144 ~ ~ ~ masked

execute as @e[name="inner_screen_copy"] at @s run clone ~ ~ ~ ~160 ~ ~144 0 0 0
execute as @e[name="inner_screen_paste"] at @s run clone 0 0 0 160 0 144 ~ ~ ~ masked

execute as @e[name="inner_screen_copy"] at @s run clone ~256 ~ ~ ~416 ~ ~144 0 0 0
execute as @e[name="inner_screen_paste"] at @s run clone 0 0 0 160 0 144 ~ ~ ~ masked


execute as @e[name="inner_screen_copy"] at @s run clone ~-256 ~ ~-256 ~-96 ~ ~-112 0 0 0
execute as @e[name="inner_screen_paste"] at @s run clone 0 0 0 160 0 144 ~ ~ ~ masked

execute as @e[name="inner_screen_copy"] at @s run clone ~ ~ ~-256 ~160 ~ ~-112 0 0 0
execute as @e[name="inner_screen_paste"] at @s run clone 0 0 0 160 0 144 ~ ~ ~ masked

execute as @e[name="inner_screen_copy"] at @s run clone ~256 ~ ~-256 ~416 ~ ~-112 0 0 0
execute as @e[name="inner_screen_paste"] at @s run clone 0 0 0 160 0 144 ~ ~ ~ masked
