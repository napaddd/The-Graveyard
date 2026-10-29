execute if predicate graveyard:in_overworld in graveyard:graveyard run summon mannequin ~ ~ ~ {Invulnerable:1b,Tags:[ghost,noID],immovable:true,CustomNameVisible:1b,hide_description:true,CustomName:{"obfuscated":true,"text":"ghost"}}
execute if predicate graveyard:in_graveyard in minecraft:overworld run summon mannequin ~ ~ ~ {Invulnerable:1b,Tags:[ghost,noID],immovable:true,CustomNameVisible:1b,hide_description:true,CustomName:{"obfuscated":true,"text":"ghost"}}
data modify entity @n[tag=ghost,tag=noID] profile.id set from entity @s UUID
tag @n[tag=ghost,tag=noID] remove noID

#say Spawned