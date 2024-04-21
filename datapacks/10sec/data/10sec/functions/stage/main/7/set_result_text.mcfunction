#テキストエンティティに結果を代入
execute if score #push_keypad tmp matches 0 as @e[tag=result_0] run data modify entity @s text set value '{"nbt":"tmp.keycode.result[0]","storage":"10sec:"}'
execute if score #push_keypad tmp matches 1 as @e[tag=result_1] run data modify entity @s text set value '{"nbt":"tmp.keycode.result[1]","storage":"10sec:"}'
execute if score #push_keypad tmp matches 2 as @e[tag=result_2] run data modify entity @s text set value '{"nbt":"tmp.keycode.result[2]","storage":"10sec:"}'
execute if score #push_keypad tmp matches 3 as @e[tag=result_3] run data modify entity @s text set value '{"nbt":"tmp.keycode.result[3]","storage":"10sec:"}'
