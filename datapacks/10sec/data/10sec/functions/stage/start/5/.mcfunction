#ボタン除去
setblock 2 -59 73 air destroy
#レシピを消しておく
recipe take @a *
#ストレージリセット
data remove storage 10sec: tmp.color_match
#どこにどの色を置くかをランダムで決める
#   0=red 1=yellow 2=green 3=blue 4=purple 5=black
data modify storage 10sec: tmp.color_match.3D_result set value {down:-1,north:-1,west:-1,south:-1,east:-1,up:-1}
data modify storage 10sec: tmp.color_match.3D set value {down:0,north:0,west:0,south:0,east:0,up:0}
execute store result storage 10sec: tmp.color_match.3D.down int 1 run random value 0..5
execute store result storage 10sec: tmp.color_match.3D.north int 1 run random value 0..5
execute store result storage 10sec: tmp.color_match.3D.west int 1 run random value 0..5
execute store result storage 10sec: tmp.color_match.3D.south int 1 run random value 0..5
execute store result storage 10sec: tmp.color_match.3D.east int 1 run random value 0..5
execute store result storage 10sec: tmp.color_match.3D.up int 1 run random value 0..5
#3Dをもとに投影図を作成
#   0→左下から右上へ
    #西側
    data modify storage 10sec: tmp.color_match.2D set value [0,0,0,0,0]
    data modify storage 10sec: tmp.color_match.2D[0] set from storage 10sec: tmp.color_match.3D.down
    data modify storage 10sec: tmp.color_match.2D[1] set from storage 10sec: tmp.color_match.3D.south
    data modify storage 10sec: tmp.color_match.2D[2] set from storage 10sec: tmp.color_match.3D.west
    data modify storage 10sec: tmp.color_match.2D[3] set from storage 10sec: tmp.color_match.3D.north
    data modify storage 10sec: tmp.color_match.2D[4] set from storage 10sec: tmp.color_match.3D.up
    #変換して設置
    execute positioned -2 -58 74 rotated -90 0 run function 10sec:stage/start/5/convert
    #南側
    data modify storage 10sec: tmp.color_match.2D set value [0,0,0,0,0]
    data modify storage 10sec: tmp.color_match.2D[0] set from storage 10sec: tmp.color_match.3D.down
    data modify storage 10sec: tmp.color_match.2D[1] set from storage 10sec: tmp.color_match.3D.east
    data modify storage 10sec: tmp.color_match.2D[2] set from storage 10sec: tmp.color_match.3D.south
    data modify storage 10sec: tmp.color_match.2D[3] set from storage 10sec: tmp.color_match.3D.west
    data modify storage 10sec: tmp.color_match.2D[4] set from storage 10sec: tmp.color_match.3D.up
    #変換して設置
    execute positioned 2 -58 78 rotated 180 0 run function 10sec:stage/start/5/convert
#インタラクション設置
summon interaction 2.5 -59 74.5 {Tags:["set_color","down"],width:1.1f,height:1}
summon interaction 2.5 -58 73.5 {Tags:["set_color","north"],width:1.1f,height:1}
summon interaction 1.5 -58 74.5 {Tags:["set_color","west"],width:1.1f,height:1}
summon interaction 2.5 -58 75.5 {Tags:["set_color","south"],width:1.1f,height:1}
summon interaction 3.5 -58 74.5 {Tags:["set_color","east"],width:1.1f,height:1}
summon interaction 2.5 -57 74.5 {Tags:["set_color","up"],width:1.1f,height:1}
#ガラスを付与
loot give @a loot 10sec:color_blocks
