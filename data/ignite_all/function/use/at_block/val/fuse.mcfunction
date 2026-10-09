execute if score #dynamic_fuse ignite_all.config matches 0 run return run function ignite_all:use/at_block/val/default/fuse
#fuse = base + k * hardness
scoreboard players operation #fuse ignite_all.tmp = #hardness ignite_all.tmp
scoreboard players operation #fuse ignite_all.tmp *= #fuse_mul ignite_all.config
scoreboard players operation #fuse ignite_all.tmp += #base_fuse ignite_all.config

execute if score #fuse ignite_all.tmp > #max_fuse ignite_all.config run scoreboard players operation #fuse ignite_all.tmp = #max_fuse ignite_all.config

execute store result storage ignite_all:re use.tnt.fuse short 0.001 run scoreboard players get #fuse ignite_all.tmp

#tellraw @a ["f: ",{storage:"ignite_all:re",nbt:"use.tnt.fuse"}]