execute if score #dynamic_power ignite_all.config matches 0 run return run function ignite_all:use/at_block/val/default/power

function #bs.block:get_blast_resistance
execute store result score #blast_resistance ignite_all.tmp run data get storage bs:out block.blast_resistance 1000

scoreboard players operation #power ignite_all.tmp = #base_power ignite_all.config
scoreboard players operation #hardness ignite_all.tmp *= #hardness_weight ignite_all.config
scoreboard players operation #power ignite_all.tmp += #hardness ignite_all.tmp
#scoreboard players operation #weighted_blast_resistance ignite_all.tmp = #blast_resistance ignite_all.tmp
scoreboard players operation #blast_resistance ignite_all.tmp /= #blast_resistance_weight ignite_all.config
scoreboard players operation #power ignite_all.tmp += #blast_resistance ignite_all.tmp

execute store result storage ignite_all:re use.tnt.explosion_power float 0.001 run scoreboard players get #power ignite_all.tmp

#tellraw @a ["p: ",{storage:"ignite_all:re",nbt:"use.tnt.explosion_power"}]