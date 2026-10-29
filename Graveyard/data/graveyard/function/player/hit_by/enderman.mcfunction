advancement revoke @s only graveyard:hit_by_enderman
scoreboard players add @s soul_damage 1
spreadplayers ~ ~ 0 8 false @s
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~
function graveyard:player/soul/save_damage with entity @s