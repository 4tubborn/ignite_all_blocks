item modify entity @s weapon.mainhand ignite_all:damage
#item break
execute if items entity @s weapon.mainhand recovery_compass[damage=64,custom_data~{"flint_and_steel":true}] run function ignite_all:item/break/main