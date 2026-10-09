#dump
data modify storage ignite_all:re use.tnt.block_state.id set from storage bs:out block.type
data modify storage ignite_all:re use.tnt.block_state.properties set from storage bs:out block.properties
#if no properties, set to empty compound
data modify storage ignite_all:re use.tnt.block_state.properties merge value {}