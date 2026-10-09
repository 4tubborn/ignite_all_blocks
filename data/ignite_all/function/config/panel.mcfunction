tellraw @s [{text:"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},\
{translate:"Ignite All Config",color:gold,bold:true,italic:true},{text:"\n",color:aqua,underlined:true,extra:[\
    {translate:"[Follow Gamerule]: ",\
        hover_event:{action:"show_text",value:{translate:"Make Ignite All TNT follow the TNT explodes gamerule."}},\
        click_event:{action:"run_command",command:"function ignite_all:config/follow_gamerule"},extra:\
    [{score:{name:"#follow_gamerule",objective:"ignite_all.config"}},{text:"\n"}]},\
    \
    {translate:"[Dynamic Explosion Power]: ",\
        hover_event:{action:"show_text",value:{translate:"Calculate explosion power based on block hardness and blast resistance."}},\
        click_event:{action:"run_command",command:"function ignite_all:config/dynamic_power"},extra:\
    [{score:{name:"#dynamic_power",objective:"ignite_all.config"}},{text:"\n"},]},\
    \
    {translate:"==================\n",color:"gray",underlined:false},\
    {translate:"[Clear Pack Data]",\
        hover_event:{action:"show_text",value:{translate:"Clear data created by the Pack"}},\
        click_event:{action:"run_command",command:"function ignite_all:_unload_"},extra:\
    [{text:"\n"},]},\
]}\
]