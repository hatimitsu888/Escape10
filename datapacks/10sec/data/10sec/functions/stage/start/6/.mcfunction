#ボタンを破壊
setblock 2 -59 85 air destroy
#ロウソクを付与
loot give @a loot 10sec:candles_remember
#どの色が入ってるかを整理
# 0=red 1=orange 2=yellow 3=green 4=cyan 5=blue 6=purple 7=pink 8=black
data modify storage 10sec: tmp.remember_colors.result_colors set value [0,0,0,0,0,0,0,0,0]
data modify storage 10sec: tmp.remember_colors.used_colors set value [0,0,0,0,0,0,0,0,0]
data modify storage 10sec: tmp.remember_colors.color.col set from storage 10sec: tmp.remember_colors.colors[0]
function 10sec:stage/start/6/used_color with storage 10sec: tmp.remember_colors.color
data modify storage 10sec: tmp.remember_colors.color.col set from storage 10sec: tmp.remember_colors.colors[1]
function 10sec:stage/start/6/used_color with storage 10sec: tmp.remember_colors.color
data modify storage 10sec: tmp.remember_colors.color.col set from storage 10sec: tmp.remember_colors.colors[2]
function 10sec:stage/start/6/used_color with storage 10sec: tmp.remember_colors.color
