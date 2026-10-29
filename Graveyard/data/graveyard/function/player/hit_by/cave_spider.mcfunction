advancement revoke @s only graveyard:hit_by_cave_spider

execute if score @s web_cooldown matches 0 if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:cobweb
execute if score @s web_cooldown matches 0 unless block ~ ~ ~ cobweb if block ~ ~1 ~ air run setblock ~ ~1 ~ minecraft:cobweb
execute if score @s web_cooldown matches 0 store result score @s web_cooldown run random value 100..200
execute if score @s web_cooldown matches 0 run playsound minecraft:block.cobweb.place block @a ~ ~ ~
scoreboard players add @s soul_damage 1
function graveyard:player/soul/save_damage with entity @s