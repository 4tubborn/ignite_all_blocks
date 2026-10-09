#advancement revoke @s only ignite_all:tick

#say 1
#参考https://cr-019.github.io/datapack-index/feature/archive/202601/f/content.html#%E5%8F%B3%E9%94%AE%E6%A3%80%E6%B5%8B-%E5%87%8F%E5%8D%8A%E6%B3%95
scoreboard players operation @s ignite_all.cur_use /= #2 ignite_all.config

#tellraw @a ["a: ",{score:{name:"@s",objective:"ignite_all.cur_use"}}]
#execute if score @s ignite_all.cur_use matches 2 run say 开始长按右键sss
#execute if score @s ignite_all.cur_use matches 3 run say 正在长按右键
#release right click
execute if score @s ignite_all.cur_use matches 1 run scoreboard players set @s ignite_all.cooldown 0

scoreboard players remove @s[scores={ignite_all.cooldown=1..}] ignite_all.cooldown 1

execute if items entity @s[predicate=!ignite_all:restore] weapon.mainhand flint_and_steel run item modify entity @s weapon.mainhand ignite_all:to_custom_item
execute if items entity @s[predicate=!ignite_all:restore] weapon.offhand flint_and_steel run item modify entity @s weapon.offhand ignite_all:to_custom_item

#execute unless items entity @s weapon.mainhand recovery_compass[custom_data~{"flint_and_steel":true}] \
unless items entity @s weapon.offhand recovery_compass[custom_data~{"flint_and_steel":true}] run scoreboard players set @s ignite_all.cooldown 0

execute if items entity @s player.crafting.0 recovery_compass[custom_data~{"flint_and_steel":true}] run item modify entity @s player.crafting.0 ignite_all:to_flint_and_steel
execute if items entity @s player.crafting.1 recovery_compass[custom_data~{"flint_and_steel":true}] run item modify entity @s player.crafting.1 ignite_all:to_flint_and_steel
execute if items entity @s player.crafting.2 recovery_compass[custom_data~{"flint_and_steel":true}] run item modify entity @s player.crafting.2 ignite_all:to_flint_and_steel
execute if items entity @s player.crafting.3 recovery_compass[custom_data~{"flint_and_steel":true}] run item modify entity @s player.crafting.3 ignite_all:to_flint_and_steel