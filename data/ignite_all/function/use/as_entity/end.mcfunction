execute if score #is_creeper ignite_all.tmp matches 1 run function ignite_all:item/set_damage
scoreboard players set #is_creeper ignite_all.tmp 0
scoreboard players set #sucess ignite_all.tmp 0
return fail