#入力リセット
data modify storage 10sec: tmp.keycode.result set value [0,0,0,0]
scoreboard players set #push_keypad tmp -1
execute as @e[tag=result_0] run data modify entity @s text set value '{"text":""}'
execute as @e[tag=result_1] run data modify entity @s text set value '{"text":""}'
execute as @e[tag=result_2] run data modify entity @s text set value '{"text":""}'
execute as @e[tag=result_3] run data modify entity @s text set value '{"text":""}'
