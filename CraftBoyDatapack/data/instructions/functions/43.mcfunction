#DEC16
scoreboard players remove HL registers 1
execute if score HL registers matches ..-1 run scoreboard players add HL registers 65536
