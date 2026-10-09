execute store result entity @s Rotation[0] float 0.0001 run random value 0..3600000
execute positioned 0.0 0.2 0.0 rotated as @s rotated ~ 0 positioned ^ ^ ^0.02 run tp ~ ~ ~
data modify storage ignite_all:re use.tnt.Motion set from entity @s Pos

#tellraw @a ["pos: ",{entity:"@s",nbt:"Pos"}]