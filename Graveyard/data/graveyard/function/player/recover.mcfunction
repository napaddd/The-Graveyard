$execute as @a[nbt={UUID:$(id)}] if score @s soul_damage matches 181.. run return fail
$tag @a[nbt={UUID:$(id)}] remove dead
$effect clear @a[nbt={UUID:$(id)}]
$attribute @a[nbt={UUID:$(id)},limit=1] minecraft:max_health base set 10
$attribute @a[nbt={UUID:$(id)},limit=1] minecraft:block_break_speed base reset
$attribute @a[nbt={UUID:$(id)},limit=1] minecraft:safe_fall_distance base reset
$attribute @a[nbt={UUID:$(id)},limit=1] minecraft:burning_time base reset
$attribute @a[nbt={UUID:$(id)},limit=1] minecraft:movement_speed base reset
$effect give @a[nbt={UUID:$(id)}] minecraft:regeneration 23 0
$effect clear @a[nbt={UUID:$(id)}] minecraft:resistance
$effect give @a[nbt={UUID:$(id)}] minecraft:resistance 3 4 true
$execute in minecraft:overworld run tp @a[nbt={UUID:$(id)}] ~ ~ ~
$item replace entity @a[nbt={UUID:$(id)}] armor.chest with air
kill @n[type=minecraft:item,predicate=graveyard:is_recovery_core,distance=...5]
$tag @a[nbt={UUID:$(id)}] add recovered
particle soul ~ ~1 ~ .4 .7 .4 0 30 normal
playsound minecraft:item.totem.use player @a ~ ~ ~ 1