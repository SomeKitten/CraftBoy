execute as @e[type=minecraft:armor_stand,name=sort_root] at @s run tp ~-1 ~ ~
execute at @e[type=minecraft:armor_stand,name=sort_root] store result score index craftboy run data get entity @e[distance=..0.5,type=armor_stand,tag=sort,limit=1] ArmorItems[2].tag.Damage
