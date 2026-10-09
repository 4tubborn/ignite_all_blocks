advancement revoke @s only ignite_all:tick

#say 1

execute if items entity @s[predicate=!ignite_all:restore] weapon.mainhand flint_and_steel run item modify entity @s weapon.mainhand ignite_all:to_custom_item
execute if items entity @s[predicate=!ignite_all:restore] weapon.offhand flint_and_steel run item modify entity @s weapon.offhand ignite_all:to_custom_item

execute if items entity @s player.crafting.0 recovery_compass[custom_data~{"flint_and_steel":true}] run item modify entity @s player.crafting.0 ignite_all:to_flint_and_steel
execute if items entity @s player.crafting.1 recovery_compass[custom_data~{"flint_and_steel":true}] run item modify entity @s player.crafting.1 ignite_all:to_flint_and_steel
execute if items entity @s player.crafting.2 recovery_compass[custom_data~{"flint_and_steel":true}] run item modify entity @s player.crafting.2 ignite_all:to_flint_and_steel
execute if items entity @s player.crafting.3 recovery_compass[custom_data~{"flint_and_steel":true}] run item modify entity @s player.crafting.3 ignite_all:to_flint_and_steel