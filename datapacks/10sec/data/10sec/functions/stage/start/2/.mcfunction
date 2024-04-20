#ボタン除去
setblock 2 -59 40 air destroy
#スコア初期化
scoreboard players set #color_phase tmp 0
#ロウソクを付与
loot give @a loot 10sec:candles
#ランダムに色を並べる
data remove storage 10sec: tmp.rnd_color
data modify storage 10sec: tmp.rnd_color.value set value []
data modify storage 10sec: tmp.rnd_color.used set value [0,0,0,0,0,0,0,0,0]
data modify storage 10sec: tmp.rnd_color.check.num set value 0
function 10sec:stage/start/2/rnd
#取り出して設置する
function 10sec:stage/main/2/pick
