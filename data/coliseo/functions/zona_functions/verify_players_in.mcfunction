scoreboard players set @s players_count 0
execute at @s run execute at @a[scores={player_in=1},distance=0..5] run scoreboard players add @s players_count 1