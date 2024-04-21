#音を鳴らす
execute as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 1 1

#データクリア
data remove entity @s interaction
data remove entity @s attack

#何を押されたか
scoreboard players set #pushed_code tmp 0
execute if entity @s[tag=0] run scoreboard players set #pushed_code tmp 0
execute if entity @s[tag=1] run scoreboard players set #pushed_code tmp 1
execute if entity @s[tag=2] run scoreboard players set #pushed_code tmp 2
execute if entity @s[tag=3] run scoreboard players set #pushed_code tmp 3
execute if entity @s[tag=4] run scoreboard players set #pushed_code tmp 4
execute if entity @s[tag=5] run scoreboard players set #pushed_code tmp 5
execute if entity @s[tag=6] run scoreboard players set #pushed_code tmp 6
execute if entity @s[tag=7] run scoreboard players set #pushed_code tmp 7
execute if entity @s[tag=8] run scoreboard players set #pushed_code tmp 8
execute if entity @s[tag=9] run scoreboard players set #pushed_code tmp 9
execute if entity @s[tag=C] run scoreboard players set #pushed_code tmp -1
execute if entity @s[tag=E] run scoreboard players set #pushed_code tmp 10

#押されたキーがC/Eだったら
execute if score #pushed_code tmp matches -1 run function 10sec:stage/main/7/reset
execute if score #pushed_code tmp matches 10 run function 10sec:stage/main/7/check

#何の数字押したか
execute if score #pushed_code tmp matches 0..9 if score #push_keypad tmp matches 0 store result storage 10sec: tmp.keycode.result[0] int 1 run scoreboard players get #pushed_code tmp
execute if score #pushed_code tmp matches 0..9 if score #push_keypad tmp matches 1 store result storage 10sec: tmp.keycode.result[1] int 1 run scoreboard players get #pushed_code tmp
execute if score #pushed_code tmp matches 0..9 if score #push_keypad tmp matches 2 store result storage 10sec: tmp.keycode.result[2] int 1 run scoreboard players get #pushed_code tmp
execute if score #pushed_code tmp matches 0..9 if score #push_keypad tmp matches 3 store result storage 10sec: tmp.keycode.result[3] int 1 run scoreboard players get #pushed_code tmp

#入力した数字を入れる
function 10sec:stage/main/7/set_result_text

scoreboard players add #push_keypad tmp 1

#フェーズが3になったらクリア
execute if score #door_phase tmp matches 3.. run advancement grant @a only 10sec:success
