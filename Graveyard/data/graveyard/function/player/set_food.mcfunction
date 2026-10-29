execute if score @s food_level matches 2.. run effect give @s minecraft:hunger 1 255 true
execute if score @s food_level matches 1 run effect clear @s minecraft:hunger
execute if score @s food_level matches 0 run effect give @s minecraft:saturation 1 0 true