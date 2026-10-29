scoreboard players set @s eat_cooldown 20
clear @s minecraft:slime_ball 1
scoreboard players remove @s soul_damage 2
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1 1.3
particle minecraft:soul_fire_flame ~ ~1 ~ 0.05 0 0.05 0 3
title @s actionbar {text:"+2 Energy",color:aqua}
function graveyard:player/soul/save_damage with entity @s