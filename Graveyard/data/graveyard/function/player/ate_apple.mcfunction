advancement revoke @s only graveyard:ate_apple
execute unless score @s soul_damage matches 0 run return run loot spawn ~ ~ ~ loot graveyard:apple
effect give @s absorption 20 2
effect give @s saturation 20 0
tag @s remove dead
attribute @s minecraft:max_health base set 6
attribute @s minecraft:block_break_speed base reset
attribute @s minecraft:safe_fall_distance base reset
attribute @s minecraft:burning_time base reset
attribute @s minecraft:movement_speed base reset
effect clear @s minecraft:resistance
effect give @s minecraft:resistance 5 4 true
execute in minecraft:overworld run tp @s ~ ~ ~
item replace entity @s armor.chest with air
tag @s add recovered
execute in overworld run particle soul ~ ~1 ~ .4 .7 .4 0 30 normal
execute in overworld run playsound minecraft:item.totem.use player @a ~ ~ ~ 1