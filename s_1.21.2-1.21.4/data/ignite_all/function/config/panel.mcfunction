tellraw @a [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},\
{"translate":"Ignite All Config","color":"gold","bold":true,"italic":true},{"text":"\n","color":"aqua","underlined":true,"extra":[\
    {"translate":"[Dynamic Explosion Power]: ",\
        "hoverEvent":{"action":"show_text","contents":{"translate":"Calculate explosion power based on block hardness and blast resistance."}},\
        "clickEvent":{"action":"run_command","value":"/function ignite_all:config/dynamic_power"},"extra":\
    [{"score":{"name":"#dynamic_power","objective":"ignite_all.config"}},{"text":"\n"}]},\
    \
    {"translate":"==================\n","color":"gray","underlined":false},\
    {"translate":"[Clear Pack Data]",\
        "hoverEvent":{"action":"show_text","contents":{"translate":"Clear data created by the Pack"}},\
        "clickEvent":{"action":"run_command","value":"/function ignite_all:_unload_"},"extra":\
    [{"text":"\n"}]}\
]}\
]