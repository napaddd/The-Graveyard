$tag @a[nbt={UUID:$(UUID)}] remove recovered
$attribute @a[nbt={UUID:$(UUID)},limit=1] minecraft:max_health base set 20
$effect give @a[nbt={UUID:$(UUID)}] minecraft:regeneration 24 1
$effect give @a[nbt={UUID:$(UUID)}] minecraft:saturation 2 1
kill @n[type=minecraft:item,predicate=graveyard:is_resurrection_crystal,distance=...5]
particle minecraft:witch ~ ~1 ~ .4 .7 .4 0 50 normal
playsound minecraft:item.totem.use player @a ~ ~ ~ 1