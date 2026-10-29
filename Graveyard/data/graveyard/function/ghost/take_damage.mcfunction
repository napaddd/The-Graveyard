$damage @n[type=mannequin,nbt={profile:{id:$(UUID)}}] .1 minecraft:out_of_world
$effect give @n[type=mannequin,nbt={profile:{id:$(UUID)}}] minecraft:instant_health 1 0 true
execute if entity @s[tag=dead] run function graveyard:player/soul/save_damage with entity @s