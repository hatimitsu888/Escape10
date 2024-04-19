#カウント増加
scoreboard players add #button_cnt tmp 1
#音を鳴らす
execute as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 1 1
#盤面リセット
fill -1 -58 25 5 -58 31 dark_oak_button[face=floor,powered=true] replace
#場所をランダムで選出
data remove storage 10sec: tmp.pos
execute store result storage 10sec: tmp.pos.x int 1 run random value -1..5
execute store result storage 10sec: tmp.pos.z int 1 run random value 26..31
#設置
function 10sec:stage/main/1/set_button with storage 10sec: tmp.pos
