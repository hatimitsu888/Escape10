#ボタン破壊
setblock 2 -59 94 air destroy
#フェーズを設定
scoreboard players set #door_phase tmp 0
#キーパッドを押した回数
scoreboard players set #push_keypad tmp 0

#キーパッド配置
scoreboard players set #visible_num tmp 1
execute positioned 1.5 -57.5 96.0 run function 10sec:stage/start/7/keypad
scoreboard players reset #visible_num tmp

#キーコードを作成
data remove storage 10sec: tmp.keycode
    #1個目
    data modify storage 10sec: tmp.keycode.0 set value [0,0,0,0]
    #これを普通にすると少し時間が厳しいので没
    # execute store result storage 10sec: tmp.keycode.0[0] int 1 run random value 0..9
    # execute store result storage 10sec: tmp.keycode.0[1] int 1 run random value 0..9
    # execute store result storage 10sec: tmp.keycode.0[2] int 1 run random value 0..9
    # execute store result storage 10sec: tmp.keycode.0[3] int 1 run random value 0..9
    execute store result storage 10sec: tmp.keycode.0[0] int 1 run random value 0..9
    data modify storage 10sec: tmp.keycode.0[1] set from storage 10sec: tmp.keycode.0[0]
    execute store result storage 10sec: tmp.keycode.0[2] int 1 run random value 0..9
    data modify storage 10sec: tmp.keycode.0[3] set from storage 10sec: tmp.keycode.0[2]
    #2個目
    data modify storage 10sec: tmp.keycode.1 set value [0,0,0,0]
    execute store result storage 10sec: tmp.keycode.1[0] int 1 run random value 0..9
    execute store result storage 10sec: tmp.keycode.1[1] int 1 run random value 0..9
    execute store result storage 10sec: tmp.keycode.1[2] int 1 run random value 0..9
    execute store result storage 10sec: tmp.keycode.1[3] int 1 run random value 0..9
    #3個目
    data modify storage 10sec: tmp.keycode.2 set value [0,0,0,0]
    execute store result storage 10sec: tmp.keycode.2[0] int 1 run random value 0..9
    execute store result storage 10sec: tmp.keycode.2[1] int 1 run random value 0..9
    execute store result storage 10sec: tmp.keycode.2[2] int 1 run random value 0..9
    execute store result storage 10sec: tmp.keycode.2[3] int 1 run random value 0..9
#入力用
data modify storage 10sec: tmp.keycode.result set value [0,0,0,0]

#コードが書かれた紙を付与
loot give @a loot 10sec:code_paper
