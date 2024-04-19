#スコア初期化
scoreboard players set #button_cnt tmp 0
#ボタン設置
fill -1 -58 25 5 -58 31 dark_oak_button[face=floor,powered=true] destroy
#場所をランダムで選出
data remove storage 10sec: tmp.pos
execute store result storage 10sec: tmp.pos.x int 1 run random value -1..5
execute store result storage 10sec: tmp.pos.z int 1 run random value 26..31
#設置
function 10sec:stage/main/1/set_button with storage 10sec: tmp.pos
