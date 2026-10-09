scoreboard players set #v ignite_all.tmp 1
scoreboard players operation #v ignite_all.tmp -= #dynamic_power ignite_all.config
scoreboard players operation #dynamic_power ignite_all.config = #v ignite_all.tmp

function ignite_all:config/panel