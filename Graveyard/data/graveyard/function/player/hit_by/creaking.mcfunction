effect give @s minecraft:mining_fatigue 15 2
effect give @s minecraft:blindness 15 0
effect give @s minecraft:slowness 15 2
scoreboard players add @s soul_damage 3
playsound minecraft:block.creaking_heart.spawn master @a ~ ~ ~
advancement revoke @s only graveyard:hit_by_creaking
function graveyard:player/soul/save_damage with entity @s