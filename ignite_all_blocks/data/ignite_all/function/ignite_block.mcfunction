setblock ~ ~ ~ air
summon tnt ~ ~ ~ {Tags:["ignite.need_process"]}
function #bs.block:get_block
tellraw @a {storage:"bs:out",nbt:"block"}