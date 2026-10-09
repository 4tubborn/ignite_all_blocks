execute if score #dynamic_power ignite_all.config matches 0 run return run data modify storage ignite_all:re use.tnt.explosion_power set value 4.0f

execute if data storage bs:out {block:{type:"minecraft:tnt"}} run return run data modify storage ignite_all:re use.tnt.explosion_power set value 4.0f

function #bs.block:get_blast_resistance
function #bs.block:get_hardness

execute store result score #hardness ignite_all.tmp run data get storage bs:out block.hardness 1000
execute store result score #blast_resistance ignite_all.tmp run data get storage bs:out block.blast_resistance 1000

execute if score #hardness ignite_all.tmp matches ..-1 run scoreboard players set #hardness ignite_all.tmp 1048576

scoreboard players operation #power ignite_all.tmp = #base_power ignite_all.config
scoreboard players operation #hardness ignite_all.tmp *= #hardness_weight ignite_all.config
scoreboard players operation #power ignite_all.tmp += #hardness ignite_all.tmp
#scoreboard players operation #weighted_blast_resistance ignite_all.tmp = #blast_resistance ignite_all.tmp
scoreboard players operation #blast_resistance ignite_all.tmp /= #blast_resistance_weight ignite_all.config
scoreboard players operation #power ignite_all.tmp += #blast_resistance ignite_all.tmp

execute store result storage ignite_all:re use.tnt.explosion_power float 0.001 run scoreboard players get #power ignite_all.tmp

#tellraw @a ["p: ",{storage:"ignite_all:re",nbt:"use.tnt.explosion_power"}]