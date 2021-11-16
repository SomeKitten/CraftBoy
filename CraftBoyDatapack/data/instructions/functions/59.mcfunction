#DEC16
scoreboard players remove SP registers 1
execute if score SP registers matches ..-1 run scoreboard players add SP registers 65536
