scoreboard objectives add ignite_all.tmp dummy
scoreboard objectives add ignite_all.config dummy
scoreboard objectives add ignite_all.cooldown dummy
scoreboard objectives add ignite_all.cur_use dummy
scoreboard players set #sucess ignite_all.tmp 0
#1c595-0-00-0-3f000000000
summon marker 0.0 0.0 0.0 {Tags:["ignite_all.marker"],UUID:[I;116117,0,1008,0]}
forceload add 0 0

execute as @a unless score @s ignite_all.cooldown matches -2147483648..2147483647 run scoreboard players set @s ignite_all.cooldown 0

execute unless score #follow_gamerule ignite_all.config matches 0..1 run scoreboard players set #follow_gamerule ignite_all.config 1
execute unless score #dynamic_power ignite_all.config matches 0..1 run scoreboard players set #dynamic_power ignite_all.config 1

scoreboard players set #2 ignite_all.config 2
#div
scoreboard players set #blast_resistance_weight ignite_all.config 200
#mul
scoreboard players set #hardness_weight ignite_all.config 1
#add,1e3
scoreboard players set #base_power ignite_all.config 500