scoreboard players set @s ignite_all.cooldown 4
playsound entity.tnt.primed block
function ignite_all:item/swing

execute as @s[gamemode=creative] run return fail

execute if items entity @s weapon.mainhand recovery_compass[custom_data~{"flint_and_steel":true}] run return run function ignite_all:item/damage/main
function ignite_all:item/damage/off