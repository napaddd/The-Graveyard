execute if predicate graveyard:sneaking if score @s soul_damage matches 1.. run function graveyard:player/check_food

execute if score @s soul_damage matches ..-1 run scoreboard players set @s soul_damage 0
execute if score @s soul_damage matches 201.. run scoreboard players set @s soul_damage 200

execute if score @s soul_damage matches 200 run function graveyard:player/soul/0
execute if score @s soul_damage matches 101..199 run function graveyard:player/soul/1
execute if score @s soul_damage matches 51..100 run function graveyard:player/soul/100
execute if score @s soul_damage matches 1..50 run function graveyard:player/soul/150
execute if score @s soul_damage matches 0 run function graveyard:player/soul/200

scoreboard players set 200 soul_health 200
execute as @a store result score @s soul_health run scoreboard players operation 200 soul_health -= @s soul_damage