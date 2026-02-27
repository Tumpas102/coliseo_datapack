execute as @s at @s run tp @s @e[type=chicken,tag=rune_anchor,sort=nearest,limit=1,distance=..50]
kill @e[type=chicken,tag=rune_anchor,sort=nearest,limit=1,distance=..50]
effect give @s speed 3 0
clear @s carrot_on_a_stick

scoreboard players set @s runa_timer8 1200
scoreboard players set @s runa_dilay8 40
scoreboard players set @s runeState 0