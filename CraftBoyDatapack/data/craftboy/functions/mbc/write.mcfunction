execute if score 327 full_rom matches 1..3 if score index craftboy matches 0..8191 run function craftboy:mbc1/ramg
execute if score 327 full_rom matches 1..3 if score index craftboy matches 8192..16383 run function craftboy:mbc1/bank1
execute if score 327 full_rom matches 1..3 if score index craftboy matches 16384..24575 run function craftboy:mbc1/bank2
execute if score 327 full_rom matches 1..3 if score index craftboy matches 24576..32767 run function craftboy:mbc1/mode

execute if score 327 full_rom matches 15..19 if score index craftboy matches 0..8191 run function craftboy:mbc3/ramg
execute if score 327 full_rom matches 15..19 if score index craftboy matches 8192..16383 run function craftboy:mbc3/rom
execute if score 327 full_rom matches 15..19 if score index craftboy matches 16384..24575 run function craftboy:mbc3/ram

execute if score 327 full_rom matches 25..30 if score index craftboy matches 0..8191 run function craftboy:mbc5/ramg
execute if score 327 full_rom matches 25..30 if score index craftboy matches 8192..12287 run function craftboy:mbc5/bank1
execute if score 327 full_rom matches 25..30 if score index craftboy matches 12288..16383 run function craftboy:mbc5/bank2
execute if score 327 full_rom matches 25..30 if score index craftboy matches 16384..20479 run function craftboy:mbc5/ram
