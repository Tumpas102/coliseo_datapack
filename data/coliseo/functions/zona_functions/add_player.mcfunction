execute as @s[tag=zona1,scores={estado_chanchito=0,chanchito_conquista=200}] run scoreboard players set @s estado_chanchito 1
execute at @s[tag=zona1,scores={zona_activa=0,estado_chanchito=1}] run scoreboard players set @p zona1 1
execute as @s[tag=zona1,scores={zona_activa=0,estado_chanchito=1}] run scoreboard players set @s zona_activa 1

execute as @s[tag=zona2,scores={estado_chanchito=0,chanchito_conquista=200}] run scoreboard players set @s estado_chanchito 1
execute at @s[tag=zona2,scores={zona_activa=0,estado_chanchito=1}] run scoreboard players set @p zona2 1
execute as @s[tag=zona2,scores={zona_activa=0,estado_chanchito=1}] run scoreboard players set @s zona_activa 1

execute as @s[tag=zona3,scores={estado_chanchito=0,chanchito_conquista=200}] run scoreboard players set @s estado_chanchito 1
execute at @s[tag=zona3,scores={zona_activa=0,estado_chanchito=1}] run scoreboard players set @p zona3 1
execute as @s[tag=zona3,scores={zona_activa=0,estado_chanchito=1}] run scoreboard players set @s zona_activa 1