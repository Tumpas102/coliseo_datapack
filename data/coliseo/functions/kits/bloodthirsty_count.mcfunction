scoreboard players add @s hit_count 1
scoreboard players set @s kit_timer6 200

execute as @a[scores={kit=6,hit_count= 0..40,damage_dealt=1..}] run effect give @s regeneration 2 2 true
execute as @a[scores={kit=6,hit_count= 41..125,damage_dealt=1..}] run effect give @s regeneration 2 3 true
execute as @a[scores={kit=6,hit_count= 126..,damage_dealt=1..}] run effect give @s regeneration 3 7 true
execute as @a[scores={kit=6,damage_dealt=1..}] run scoreboard players set @s damage_dealt 0