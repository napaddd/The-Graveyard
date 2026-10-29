schedule function graveyard:1s_loop 1s

execute as @a[predicate=graveyard:in_overworld] if score graveyard players_in matches 1 at @s unless score @s died matches 1.. run function graveyard:ghost/check_for with entity @s
execute as @a[predicate=graveyard:in_graveyard] if score overworld players_in matches 1 at @s unless score @s died matches 1.. run function graveyard:ghost/check_for with entity @s