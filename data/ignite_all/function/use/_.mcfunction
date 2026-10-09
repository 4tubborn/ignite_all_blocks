advancement revoke @s only ignite_all:consume

scoreboard players add @s ignite_all.cur_use 4

execute unless score @s ignite_all.cooldown matches 0 run return fail
#say 2

execute unless function ignite_all:util/tnt_explodes_gamerule if score #follow_gamerule ignite_all.config matches 1 run return run function ignite_all:out/tnt_explodes_disabled

tag @e[distance=..10] add bs.view.is_lookable
function #bs.view:as_looked_entity {run:"function ignite_all:use/as_entity/_"}
tag @e[distance=..10,tag=bs.view.is_lookable] remove bs.view.is_lookable

execute if score #sucess ignite_all.tmp matches 1 run return run function ignite_all:use/as_entity/end
#tellraw @a {storage:"bs:out",nbt:"raycast"}

#no optional values so simply modifying storage based on previous stored data
#data remove storage ignite_all:re use.at_aimed_block
data modify storage ignite_all:re use.at_aimed_block set value {run: "function ignite_all:use/at_block/_", with: {max_distance:5.0}}
execute store result storage ignite_all:re use.at_aimed_block.with.max_distance double 0.001 run function ignite_all:util/block_range

function #bs.view:at_aimed_block with storage ignite_all:re use.at_aimed_block