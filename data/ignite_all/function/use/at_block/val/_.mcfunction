execute if score #dynamic_power ignite_all.config matches 0 if score #dynamic_fuse ignite_all.config matches 0 run \
return run function ignite_all:use/at_block/val/default/all
execute if data storage bs:out {block:{type:"minecraft:tnt"}} run \
return run function ignite_all:use/at_block/val/default/all

function #bs.block:get_hardness

execute store result score #hardness ignite_all.tmp run data get storage bs:out block.hardness 1000

execute if score #hardness ignite_all.tmp matches ..-1 run scoreboard players set #hardness ignite_all.tmp 131072

function ignite_all:use/at_block/val/fuse

function ignite_all:use/at_block/val/power