# Locked gamerules
gamerule keep_inventory false
gamerule ender_pearls_vanish_on_death true 

# -1 Scoreboards
scoreboard players remove @a[scores={sounds=1..}] sounds 1
scoreboard players remove @a[scores={web_cooldown=1..}] web_cooldown 1
scoreboard players remove @a[scores={eat_cooldown=1..}] eat_cooldown 1
scoreboard players remove @a[scores={heartbeat=1..}] heartbeat 1

execute as @a[tag=dead,scores={sounds=0}] at @s in minecraft:overworld run function graveyard:ghost/sounds
execute as @a unless score @s sounds matches 0.. run scoreboard players add @s sounds 0
scoreboard players reset @a[tag=!dead] sounds

execute as @a unless score @s web_cooldown matches 0.. run scoreboard players add @s web_cooldown 0
scoreboard players reset @a[tag=!dead] web_cooldown

execute as @a unless score @s eat_cooldown matches 0.. run scoreboard players add @s eat_cooldown 0
scoreboard players reset @a[tag=!dead] eat_cooldown

execute as @a[tag=dead] at @s if score @s soul_damage matches 200 unless score @s heartbeat matches 1.. run function graveyard:player/soul/heartbeat

execute as @a[predicate=graveyard:took_damage] run function graveyard:ghost/take_damage with entity @s

# Optimizable by removing this and only spawning ghosts when in loaded chunks
execute in graveyard:graveyard run forceload remove all
execute in minecraft:overworld run forceload remove all
execute as @a[predicate=graveyard:in_overworld] at @s in graveyard:graveyard run forceload add ~ ~
execute as @a[predicate=graveyard:in_graveyard] at @s in minecraft:overworld run forceload add ~ ~

execute as @a[scores={died=1..}] run function graveyard:ghost/kill with entity @s
execute as @a[scores={died=1..,respawn=1}] run function graveyard:player/death

execute as @a[tag=dead,gamemode=!spectator] at @s in minecraft:overworld run function graveyard:ghost/place with entity @s
execute as @a[predicate=graveyard:in_overworld,tag=!dead,gamemode=!spectator] at @s in graveyard:graveyard run function graveyard:ghost/place with entity @s

execute as @e[type=mannequin,tag=ghost] at @s run function graveyard:player/check_for with entity @s profile

# Get rid of unnecessary ghosts
execute as @a run function graveyard:ghost/count with entity @s
execute as @e[type=mannequin,tag=noID] run function graveyard:ghost/remove
execute as @a[predicate=!graveyard:in_overworld,tag=!dead] unless dimension graveyard:graveyard run function graveyard:player/remove_my_ghost with entity @s
execute as @a[gamemode=spectator] run function graveyard:player/remove_my_ghost with entity @s

# Dead people hunger bar regulation
execute as @a[tag=dead] run function graveyard:player/set_food

# Revival Items Process
execute as @e[type=mannequin,tag=ghost] at @s if entity @n[type=minecraft:item,predicate=graveyard:is_recovery_core,distance=...5] run function graveyard:player/recover with entity @s profile
execute as @e[type=mannequin,tag=ghost] at @s if entity @n[type=minecraft:item,predicate=graveyard:is_resurrection_crystal,distance=...5] run function graveyard:player/revive with entity @s profile
execute as @a[tag=recovered] at @s if entity @n[type=minecraft:item,predicate=graveyard:is_resurrection_crystal,distance=...5] run function graveyard:player/revive_from_recover with entity @s

# Soul consuming and effects
execute as @a[tag=dead] at @s run function graveyard:player/soul/tick

execute store success score overworld players_in run execute if entity @a[predicate=graveyard:in_overworld]
execute store success score graveyard players_in run execute if entity @a[predicate=graveyard:in_graveyard]
execute if score overworld players_in matches 0 run kill @e[type=minecraft:mannequin,predicate=graveyard:in_overworld]
execute if score graveyard players_in matches 0 run kill @e[type=minecraft:mannequin,predicate=graveyard:in_graveyard]

#execute as @a store result score @s UUID.0 run data get entity @s UUID[0]
#execute as @a store result score @s UUID.1 run data get entity @s UUID[1]
#execute as @a store result score @s UUID.2 run data get entity @s UUID[2]
#execute as @a store result score @s UUID.3 run data get entity @s UUID[3]
