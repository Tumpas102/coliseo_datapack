#Verifica para cambiar velocidad de ataque y curacion
execute as @a[scores={kits=6,hit_count= ..5}] run attribute @s generic.attack_speed base set 3.5
execute as @a[scores={kits=6,hit_count= 6..15}] run attribute @s generic.attack_speed base set 4
execute as @a[scores={kits=6,hit_count= 16..25}] run attribute @s generic.attack_speed base set 4.5
execute as @a[scores={kits=6,hit_count= 26..40}] run attribute @s generic.attack_speed base set 5
execute as @a[scores={kits=6,hit_count= 41..75}] run attribute @s generic.attack_speed base set 5.5
execute as @a[scores={kits=6,hit_count= 75..125}] run attribute @s generic.attack_speed base set 6
execute as @a[scores={kits=6,hit_count= 126..}] run attribute @s generic.attack_speed base set 7

execute as @a[scores={kits=6,hit_count= ..5}] run xp set @s 1 levels
execute as @a[scores={kits=6,hit_count= 6..15}] run xp set @s 2 levels
execute as @a[scores={kits=6,hit_count= 16..25}] run xp set @s 3 levels
execute as @a[scores={kits=6,hit_count= 26..40}] run xp set @s 4 levels
execute as @a[scores={kits=6,hit_count= 41..75}] run xp set @s 5 levels
execute as @a[scores={kits=6,hit_count= 75..125}] run xp set @s 6 levels
execute as @a[scores={kits=6,hit_count= 126..}] run xp set @s 7 levels

execute as @a[scores={kits=6,hit_count= 40..}] run effect give @s speed 2 0
execute as @a[scores={kits=6,hit_count= 126..}] run effect give @s speed 2 3

#Esto controla el contador y el tiempo
execute as @a[scores={kits = 6}] run scoreboard players remove @s kit_timer6 1
execute as @a[scores={kits=6,kit_timer6= 0..,hit_count=1..}] run scoreboard players remove @s kit_timer6 1
execute as @a[scores={kits=6,kit_timer6= ..1,hit_count=1..}] run scoreboard players remove @s hit_count 1
execute as @a[scores={kits=6,kit_timer6= ..1,hit_count=1..}] run scoreboard players set @s kit_timer6 20

#Esto hace q no pueda comer :b

execute as @a[scores={kits=6,hambre=11..}] run effect give @s hunger 1 255
execute as @a[scores={kits=6,hambre=..9}] run effect give @s saturation 1 0
