# TODO remake MBC1, MBC3, MBC5

execute if score 327 rom matches 1..3 if score index craftboy matches 0..8191 run function craftboy:mbc1/ramg

execute if score 327 rom matches 1..3 if score index craftboy matches 8192..16383 run scoreboard players operation bank1 craftboy = transfer craftboy
execute if score 327 rom matches 1..3 if score index craftboy matches 8192..16383 run function craftboy:mbc1/bank1

execute if score 327 rom matches 1..3 if score index craftboy matches 16384..24575 run scoreboard players operation bank2 craftboy = transfer craftboy
execute if score 327 rom matches 1..3 if score index craftboy matches 16384..24575 run function craftboy:mbc1/bank2

execute if score 327 rom matches 1..3 if score index craftboy matches 24576..32767 run function craftboy:mbc1/mode
