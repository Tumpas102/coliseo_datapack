effect give @e[type=pig] resistance 2 255 true

execute as @e[type=pig,tag=zona] at @s rotated as @s run particle minecraft:flame ^ ^ ^5
execute as @e[type=pig,tag=zona] at @s rotated as @s run particle minecraft:flame ^ ^ ^-5

execute as @e[type=pig,tag=zona,scores={players_count=1..}] run execute at @s run tp @s ~ ~ ~ ~10 ~