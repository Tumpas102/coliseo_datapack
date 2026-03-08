effect give @s resistance 1 5
execute as @s at @p[distance=0.2..] run summon lightning_bolt ~ ~ ~
execute as @s at @p[distance=0.2..] run effect give @s instant_damage 1 0

scoreboard players set @s runa_timer4 400