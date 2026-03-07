execute at @s run scoreboard players set @a[distance=0..5] player_in 1
execute at @s run scoreboard players set @a[distance=5..6] player_in 0

execute at @s[tag=zona1] as @a[distance=0..5,scores={zona1=1}] run scoreboard players set @e[tag=zona1] is_owner 1
execute at @s[tag=zona1] as @a[distance=5..,scores={zona1=1}] run scoreboard players set @e[tag=zona1] is_owner 0
execute at @s[tag=zona2] as @a[distance=0..5,scores={zona2=1}] run scoreboard players set @e[tag=zona2] is_owner 1
execute at @s[tag=zona2] as @a[distance=5..,scores={zona2=1}] run scoreboard players set @e[tag=zona2] is_owner 0
execute at @s[tag=zona3] as @a[distance=0..5,scores={zona3=1}] run scoreboard players set @e[tag=zona3] is_owner 1
execute at @s[tag=zona3] as @a[distance=5..,scores={zona3=1}] run scoreboard players set @e[tag=zona3] is_owner 0

execute as @s run function coliseo:zona_functions/verify_players_in
function coliseo:zona_functions/particulas_chanchito
#Si zona es 1 y el chanchito no esta conquistado, se suma 1 a conquista
execute as @s[tag=zona,scores={estado_chanchito=0,players_count=1}] run scoreboard players add @s chanchito_conquista 1
execute as @s[tag=zona,scores={estado_chanchito=0,players_count=2..}] run scoreboard players set @s chanchito_conquista 0
execute as @s run function coliseo:zona_functions/add_player

#si el chanchito esta conquistado, se activa la zona y se le da un tiempo de diley para q no se pueda conquistar inmediatamente
execute as @s[tag=zona,scores={estado_chanchito=1,players_count=1,is_owner=0}] run scoreboard players remove @s zona_diley 1
execute as @s[tag=zona,scores={estado_chanchito=1,players_count=2..}] run scoreboard players set @s zona_diley 100
execute as @s[tag=zona,scores={estado_chanchito=1,players_count=0}] run scoreboard players set @s zona_diley 100
execute as @s[tag=zona,scores={zona_activa=1,zona_diley=0}] run function coliseo:zona_functions/reset_chanchito


execute as @a[scores={zona1=1}] run scoreboard players add @s control_points 1
execute as @a[scores={zona2=1}] run scoreboard players add @s control_points 1
execute as @a[scores={zona3=1}] run scoreboard players add @s control_points 1
execute as @a[scores={control_points=20..}] run scoreboard players add @s player_points 1
execute as @a[scores={control_points=20..}] run scoreboard players remove @s control_points 20