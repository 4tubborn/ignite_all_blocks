item modify entity @s weapon.offhand ignite_all:damage
#item break
execute if items entity @s weapon.offhand recovery_compass[damage=64,custom_data~{"flint_and_steel":true}] run function ignite_all:item/break/off