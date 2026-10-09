$summon tnt ~ ~ ~ $(tnt)
#summon tnt ~ ~ ~
#data modify entity @n[type=tnt] block_state.Name set from storage bs:out block.type
#data modify entity @n[type=tnt] block_state.Properties set from storage bs:out block.properties
#tag @n[distance=..1,type=tnt,tag=ignite_all.need_modify] remove ignite_all.need_modify