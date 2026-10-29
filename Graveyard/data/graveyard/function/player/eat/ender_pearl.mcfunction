scoreboard players set @s eat_cooldown 20
clear @s minecraft:ender_pearl 1
scoreboard players remove @s soul_damage 3
playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1 1.3
particle minecraft:soul_fire_flame ~ ~1 ~ 0.05 0 0.05 0 3
title @s actionbar {text:"+3 Energy",color:aqua}
function graveyard:player/soul/save_damage with entity @s