#記入用データに変換
data remove storage 10sec_result: write_data
data modify storage 10sec_result: write_data.stage1 set value '[{"text":"\\\\u2716","color":"#ff0000"}]'
data modify storage 10sec_result: write_data.stage2 set value '[{"text":"\\\\u2716","color":"#ff0000"}]'
data modify storage 10sec_result: write_data.stage3 set value '[{"text":"\\\\u2716","color":"#ff0000"}]'
data modify storage 10sec_result: write_data.stage4 set value '[{"text":"\\\\u2716","color":"#ff0000"}]'
data modify storage 10sec_result: write_data.stage5 set value '[{"text":"\\\\u2716","color":"#ff0000"}]'
data modify storage 10sec_result: write_data.stage6 set value '[{"text":"\\\\u2716","color":"#ff0000"}]'
data modify storage 10sec_result: write_data.stage7 set value '[{"text":"\\\\u2716","color":"#ff0000"}]'
data modify storage 10sec_result: write_data.stage8 set value '[{"text":"\\\\u2716","color":"#ff0000"}]'
execute if data storage 10sec_result: write_result[0].stage1 run function 10sec:stage/common/play_data/book/add_page_write with storage 10sec_result: write_result[0].stage1
execute if data storage 10sec_result: write_result[0].stage1 run data modify storage 10sec_result: write_data.stage1 set from storage 10sec_result: write_data.tmp
execute if data storage 10sec_result: write_result[0].stage2 run function 10sec:stage/common/play_data/book/add_page_write with storage 10sec_result: write_result[0].stage2
execute if data storage 10sec_result: write_result[0].stage2 run data modify storage 10sec_result: write_data.stage2 set from storage 10sec_result: write_data.tmp
execute if data storage 10sec_result: write_result[0].stage3 run function 10sec:stage/common/play_data/book/add_page_write with storage 10sec_result: write_result[0].stage3
execute if data storage 10sec_result: write_result[0].stage3 run data modify storage 10sec_result: write_data.stage3 set from storage 10sec_result: write_data.tmp
execute if data storage 10sec_result: write_result[0].stage4 run function 10sec:stage/common/play_data/book/add_page_write with storage 10sec_result: write_result[0].stage4
execute if data storage 10sec_result: write_result[0].stage4 run data modify storage 10sec_result: write_data.stage4 set from storage 10sec_result: write_data.tmp
execute if data storage 10sec_result: write_result[0].stage5 run function 10sec:stage/common/play_data/book/add_page_write with storage 10sec_result: write_result[0].stage5
execute if data storage 10sec_result: write_result[0].stage5 run data modify storage 10sec_result: write_data.stage5 set from storage 10sec_result: write_data.tmp
execute if data storage 10sec_result: write_result[0].stage6 run function 10sec:stage/common/play_data/book/add_page_write with storage 10sec_result: write_result[0].stage6
execute if data storage 10sec_result: write_result[0].stage6 run data modify storage 10sec_result: write_data.stage6 set from storage 10sec_result: write_data.tmp
execute if data storage 10sec_result: write_result[0].stage7 run function 10sec:stage/common/play_data/book/add_page_write with storage 10sec_result: write_result[0].stage7
execute if data storage 10sec_result: write_result[0].stage7 run data modify storage 10sec_result: write_data.stage7 set from storage 10sec_result: write_data.tmp
execute if data storage 10sec_result: write_result[0].stage8 run function 10sec:stage/common/play_data/book/add_page_write with storage 10sec_result: write_result[0].stage8
execute if data storage 10sec_result: write_result[0].stage8 run data modify storage 10sec_result: write_data.stage8 set from storage 10sec_result: write_data.tmp

#回数
execute store result storage 10sec_result: write_data.count int 1 run scoreboard players get #playcount tmp

#記入
function 10sec:stage/common/play_data/book/write with storage 10sec_result: write_data

#回数アップ
scoreboard players add #playcount tmp 1

#データ削除
data remove storage 10sec_result: write_result[0]
#再帰
execute if data storage 10sec_result: write_result[0] run function 10sec:stage/common/play_data/book/add_page
