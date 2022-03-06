# TODO make window not bg overlay, but bg replacement

scoreboard players operation y ppu = window_count graphics
scoreboard players set x ppu 0


execute if score y ppu matches ..-1 run scoreboard players add y ppu 256
execute if score y ppu matches 256.. run scoreboard players remove y ppu 256


scoreboard players operation line ppu = y ppu
scoreboard players operation line ppu /= 8 constants
scoreboard players operation tileY ppu = line ppu
scoreboard players operation line ppu *= 8 constants


scoreboard players operation y ppu -= line ppu
scoreboard players remove y ppu 7
scoreboard players operation y ppu *= -1 constants


scoreboard players operation tileX ppu = x ppu
scoreboard players operation tileX ppu /= 8 constants

execute store result entity @s Pos[0] double 1 run scoreboard players get 65355 io
execute at @s run tp ~-7 ~ ~

function craftboy:ppu/window_tile
function craftboy:ppu/window_tile
function craftboy:ppu/window_tile
function craftboy:ppu/window_tile
function craftboy:ppu/window_tile
function craftboy:ppu/window_tile
function craftboy:ppu/window_tile
function craftboy:ppu/window_tile
function craftboy:ppu/window_tile
function craftboy:ppu/window_tile
function craftboy:ppu/window_tile
function craftboy:ppu/window_tile
function craftboy:ppu/window_tile
function craftboy:ppu/window_tile
function craftboy:ppu/window_tile
function craftboy:ppu/window_tile
function craftboy:ppu/window_tile
function craftboy:ppu/window_tile
function craftboy:ppu/window_tile
function craftboy:ppu/window_tile

scoreboard players add window_count graphics 1
