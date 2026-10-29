execute if items entity @s weapon.offhand minecraft:shield run loot spawn ~ ~ ~ loot graveyard:shield
execute if items entity @s weapon.offhand minecraft:shield run item replace entity @s weapon.offhand with air

execute if items entity @s weapon.mainhand minecraft:shield run loot spawn ~ ~ ~ loot graveyard:shield
execute if items entity @s weapon.mainhand minecraft:shield run item replace entity @s weapon.mainhand with air

playsound minecraft:item.shield.break player @a ~ ~ ~
advancement revoke @s only graveyard:break_shield