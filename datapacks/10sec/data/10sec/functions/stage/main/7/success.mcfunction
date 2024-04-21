#フェーズ数によってドアを開ける
execute if score #door_phase tmp matches 1.. run setblock 2 -61 96 redstone_torch replace
execute if score #door_phase tmp matches 2.. run setblock 2 -61 100 redstone_torch replace
execute if score #door_phase tmp matches 3.. run setblock 2 -61 104 redstone_torch replace

#キーパッド削除
kill @e[tag=keypad]
#紙削除
clear @a *[minecraft:custom_data={code:1b}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{code:1b}}}}]
#紙付与
loot give @a loot 10sec:code_paper
#入力リセット
data modify storage 10sec: tmp.keycode.result set value [0,0,0,0]
scoreboard players set #push_keypad tmp -1

#キーパッド配置
execute if score #door_phase tmp matches 1 run scoreboard players set #visible_num tmp 1
execute if score #door_phase tmp matches 2 run scoreboard players set #visible_num tmp 0
execute if score #door_phase tmp matches 1 positioned 1.5 -57.5 100.0 run function 10sec:stage/start/7/keypad
execute if score #door_phase tmp matches 2 positioned 1.5 -57.5 104.0 run function 10sec:stage/start/7/keypad
scoreboard players reset #visible_num tmp
