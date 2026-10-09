execute if block ~ ~ ~ #ignite_all:not_ignitable run return fail

function #bs.block:get_block

data remove storage ignite_all:re use.tnt

data modify storage ignite_all:re use.tnt.fuse set value 80s

function ignite_all:use/at_block/block_state

data modify storage ignite_all:re use.tnt.owner set from entity @s UUID

function ignite_all:use/at_block/val/_
#tellraw @a {storage:"ignite_all:re",nbt:"use.tnt.properties"}

setblock ~ ~ ~ air

function ignite_all:use/at_block/motion/_

execute positioned ~0.5 ~ ~0.5 run function ignite_all:use/at_block/summon_tnt with storage ignite_all:re use
function ignite_all:item/update