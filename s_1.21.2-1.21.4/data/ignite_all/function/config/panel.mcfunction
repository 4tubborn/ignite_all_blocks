tellraw @a [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},\
{"translate":"Ignite All Config","color":"gold","bold":true,"italic":true},{"text":"\n","color":"aqua","underlined":true,"extra":[\
    {"translate":"[Follow Gamerule]: ",\
        "hoverEvent":{"action":"show_text","contents":{"translate":"Make Ignite All TNT follow the tnt_explodes gamerule."}},\
        "clickEvent":{"action":"run_command","value":"/function ignite_all:config/follow_gamerule"},"extra":\
    [{"score":{"name":"#follow_gamerule","objective":"ignite_all.config"}},{"text":"\n"}]},\
    \
    {"translate":"[Dynamic Explosion Power]: ",\
        "hoverEvent":{"action":"show_text","contents":{"translate":"Calculate explosion power based on block hardness and blast resistance."}},\
        "clickEvent":{"action":"run_command","value":"/function ignite_all:config/dynamic_power"},"extra":\
    [{"score":{"name":"#dynamic_power","objective":"ignite_all.config"}},{"text":"\n"}]}\
]}\
]