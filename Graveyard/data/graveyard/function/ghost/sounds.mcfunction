playsound minecraft:entity.vex.ambient player @a ~ ~ ~ 1 .5
execute anchored eyes run particle minecraft:soul ^ ^.5 ^ .1 0 .1 0 1
execute store result score @s sounds run random value 300..1200