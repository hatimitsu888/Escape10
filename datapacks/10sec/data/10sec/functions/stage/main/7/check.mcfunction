#チェック
scoreboard players set #number_check tmp 1
execute if score #door_phase tmp matches 0 run data modify storage 10sec: tmp.keycode.check set from storage 10sec: tmp.keycode.0
execute if score #door_phase tmp matches 1 run data modify storage 10sec: tmp.keycode.check set from storage 10sec: tmp.keycode.1
execute if score #door_phase tmp matches 2 run data modify storage 10sec: tmp.keycode.check set from storage 10sec: tmp.keycode.2

#比較
execute store success score #number_check tmp run data modify storage 10sec: tmp.keycode.check set from storage 10sec: tmp.keycode.result

#音を鳴らす
execute if score #number_check tmp matches 1 as @a at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 1 1
execute if score #number_check tmp matches 0 as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 1 1

#ミスってたら消す
execute if score #number_check tmp matches 1 run function 10sec:stage/main/7/reset
#正解ならフェーズ増加
execute if score #number_check tmp matches 0 run scoreboard players add #door_phase tmp 1

#正解してたら
execute if score #number_check tmp matches 0 run function 10sec:stage/main/7/success
