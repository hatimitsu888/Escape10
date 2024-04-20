#ヒントを表示
title @a actionbar [{"text":"他と違うボタンを押そう！","color":"#ff5555"},{"score":{"name":"#button_cnt","objective":"tmp"}},{"text":"/7"}]

#ボタンが押されているかどうか
execute if block -1 -58 25 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 0 -58 25 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 1 -58 25 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 2 -58 25 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 3 -58 25 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 4 -58 25 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 5 -58 25 stone_button[powered=true] run function 10sec:stage/main/1/push

execute if block -1 -58 26 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 0 -58 26 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 1 -58 26 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 2 -58 26 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 3 -58 26 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 4 -58 26 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 5 -58 26 stone_button[powered=true] run function 10sec:stage/main/1/push

execute if block -1 -58 27 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 0 -58 27 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 1 -58 27 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 2 -58 27 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 3 -58 27 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 4 -58 27 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 5 -58 27 stone_button[powered=true] run function 10sec:stage/main/1/push

execute if block -1 -58 28 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 0 -58 28 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 1 -58 28 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 2 -58 28 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 3 -58 28 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 4 -58 28 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 5 -58 28 stone_button[powered=true] run function 10sec:stage/main/1/push

execute if block -1 -58 29 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 0 -58 29 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 1 -58 29 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 2 -58 29 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 3 -58 29 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 4 -58 29 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 5 -58 29 stone_button[powered=true] run function 10sec:stage/main/1/push

execute if block -1 -58 30 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 0 -58 30 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 1 -58 30 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 2 -58 30 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 3 -58 30 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 4 -58 30 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 5 -58 30 stone_button[powered=true] run function 10sec:stage/main/1/push

execute if block -1 -58 31 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 0 -58 31 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 1 -58 31 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 2 -58 31 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 3 -58 31 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 4 -58 31 stone_button[powered=true] run function 10sec:stage/main/1/push
execute if block 5 -58 31 stone_button[powered=true] run function 10sec:stage/main/1/push

#クリア
execute if score #button_cnt tmp matches 7.. run advancement grant @a only 10sec:success

#戻り値
return 1