execute if block ~ ~ ~ #ignite_all:not_ignitable run return fail

function #bs.block:get_block

data remove storage ignite_all:re use.tnt
#dump
data modify storage ignite_all:re use.tnt.block_state.Name set from storage bs:out block.type
data modify storage ignite_all:re use.tnt.block_state.Properties set from storage bs:out block.properties
#if no properties, set to empty compound
data modify storage ignite_all:re use.tnt.block_state.Properties merge value {}

data modify storage ignite_all:re use.tnt.owner set from entity @s UUID

function ignite_all:use/at_block/power/_
#tellraw @a {storage:"ignite_all:re",nbt:"use.tnt.properties"}

setblock ~ ~ ~ air

function ignite_all:use/at_block/motion/_

execute positioned ~0.5 ~ ~0.5 run function ignite_all:use/at_block/summon_tnt with storage ignite_all:re use
function ignite_all:item/update