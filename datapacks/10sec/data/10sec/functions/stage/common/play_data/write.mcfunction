#クリアタイムを一旦保存
scoreboard players set #sec tmp 10
execute if score #msec tick matches 1.. run scoreboard players remove #sec tmp 1
scoreboard players set #msec tmp 100
execute if score #msec tick matches ..0 run scoreboard players set #msec tmp 0
data remove storage 10sec_result: times
execute store result storage 10sec_result: times.write.sec int 1 run scoreboard players operation #sec tmp -= #sec tick
execute store result storage 10sec_result: times.write.msec int 1 run scoreboard players operation #msec tmp -= #msec tick
function 10sec:stage/common/play_data/write_num with storage 10sec_result: times.write

#ステージ毎に書き加える
execute if score #stage flags matches 1 run data modify storage 10sec_result: result[-1].stage1 set from storage 10sec_result: times
execute if score #stage flags matches 2 run data modify storage 10sec_result: result[-1].stage2 set from storage 10sec_result: times
execute if score #stage flags matches 3 run data modify storage 10sec_result: result[-1].stage3 set from storage 10sec_result: times
execute if score #stage flags matches 4 run data modify storage 10sec_result: result[-1].stage4 set from storage 10sec_result: times
execute if score #stage flags matches 5 run data modify storage 10sec_result: result[-1].stage5 set from storage 10sec_result: times
execute if score #stage flags matches 6 run data modify storage 10sec_result: result[-1].stage6 set from storage 10sec_result: times
execute if score #stage flags matches 7 run data modify storage 10sec_result: result[-1].stage7 set from storage 10sec_result: times
execute if score #stage flags matches 8 run data modify storage 10sec_result: result[-1].stage8 set from storage 10sec_result: times
