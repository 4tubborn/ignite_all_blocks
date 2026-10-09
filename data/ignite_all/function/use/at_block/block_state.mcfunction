#dump
data modify storage ignite_all:re use.tnt.block_state.Name set from storage bs:out block.type
data modify storage ignite_all:re use.tnt.block_state.Properties set from storage bs:out block.properties
#if no properties, set to empty compound
data modify storage ignite_all:re use.tnt.block_state.Properties merge value {}