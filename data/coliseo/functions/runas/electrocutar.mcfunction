execute as @s at @e[distance=0.1..,limit=1,sort=nearest] run summon lightning_bolt ~ ~ ~
execute as @s at @e[distance=0.2..,limit=1,sort=nearest] run effect give @s instant_damage 1 0
effect give @s resistance 1 5
scoreboard players set @s runa_timer4 400