tag @s add dead
execute in graveyard:graveyard run tp ~ 320 ~
effect give @s minecraft:blindness 2 0 true
effect give @s minecraft:resistance infinite 4 true
attribute @s minecraft:max_health base set 2
attribute @s minecraft:block_break_speed base set .1
attribute @s minecraft:safe_fall_distance base set 100000
attribute @s minecraft:burning_time base set 0
execute unless score @s soul_damage matches 0..200 run scoreboard players set @s soul_damage 150
function graveyard:player/soul/save_damage with entity @s

scoreboard players reset @s died