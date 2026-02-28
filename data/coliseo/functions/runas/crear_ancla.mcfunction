execute at @s run summon chicken ~ ~ ~ {Tags:["rune_anchor"],NoAI:1b,Silent:1b}
execute at @s as @e[tag=rune_anchor, distance = ..1] run function coliseo:runas/mirar_hacia

scoreboard players set @s runa_dilay8 40
scoreboard players set @s runeState 1