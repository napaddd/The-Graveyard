execute store result storage graveyard:ghost soul_damage int 1 run scoreboard players get @s soul_damage

scoreboard players set 200 soul_health 200
execute store result score @s soul_health run scoreboard players operation 200 soul_health -= @s soul_damage
execute store result storage graveyard:ghost soul_health int 1 run scoreboard players get @s soul_health

function graveyard:player/soul/set_soul with storage graveyard:ghost