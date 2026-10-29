$tp @e[type=mannequin,nbt={profile:{id:$(UUID)}},tag=!dying] ~ ~ ~ ~ ~
$execute as @s if predicate graveyard:sneaking run data modify entity @n[type=mannequin,nbt={profile:{id:$(UUID)}}] pose set value "crouching"
$execute as @s if predicate graveyard:swimming run data modify entity @n[type=mannequin,nbt={profile:{id:$(UUID)}}] pose set value "swimming"
$execute as @s if predicate graveyard:gliding run data modify entity @n[type=mannequin,nbt={profile:{id:$(UUID)}}] pose set value "fall_flying"
$execute as @s unless predicate graveyard:sneaking unless predicate graveyard:swimming unless predicate graveyard:gliding run data modify entity @n[type=mannequin,nbt={profile:{id:$(UUID)}}] pose set value "standing"
$item replace entity @n[type=mannequin,nbt={profile:{id:$(UUID)}}] weapon.mainhand from entity @s weapon.mainhand 
$item replace entity @n[type=mannequin,nbt={profile:{id:$(UUID)}}] weapon.offhand from entity @s weapon.offhand 
$item replace entity @n[type=mannequin,nbt={profile:{id:$(UUID)}}] armor.feet from entity @s armor.feet
$item replace entity @n[type=mannequin,nbt={profile:{id:$(UUID)}}] armor.head from entity @s armor.head
$item replace entity @n[type=mannequin,nbt={profile:{id:$(UUID)}}] armor.legs from entity @s armor.legs