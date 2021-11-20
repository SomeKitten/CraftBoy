execute at @e[type=minecraft:armor_stand,name=sort_root] positioned ~ ~ ~ as @e[distance=..0.5,type=armor_stand,tag=sort,limit=1] run tp ~ ~1 ~
execute at @e[type=minecraft:armor_stand,name=sort_root] positioned ~1 ~ ~ as @e[distance=..0.5,type=armor_stand,tag=sort,limit=1] run tp ~-1 ~ ~
execute at @e[type=minecraft:armor_stand,name=sort_root] positioned ~ ~1 ~ as @e[distance=..0.5,type=armor_stand,tag=sort,limit=1] run tp ~1 ~-1 ~

scoreboard players set sort craftboy 1
