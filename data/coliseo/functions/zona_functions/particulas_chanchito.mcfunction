effect give @e[type=pig] resistance 2 255 true

execute as @e[type=pig,tag=zona] at @s rotated as @s run particle minecraft:flame ^ ^ ^5
execute as @e[type=pig,tag=zona] at @s rotated as @s run particle minecraft:flame ^ ^ ^-5

execute as @e[tag=zona] at @s[scores={estado_chanchito = 0,players_count=0}] run setblock ~ ~-1 ~ iron_block
execute as @e[tag=zona] at @s[scores={players_count=1..}] run setblock ~ ~-1 ~ redstone_block
execute as @e[tag=zona] at @s[scores={estado_chanchito = 1,players_count=0}] run setblock ~ ~-1 ~ diamond_block
execute as @e[type=pig,tag=zona,scores={players_count=1..}] run execute at @s run tp @s ~ ~ ~ ~10 ~