#ヒントを表示
title @a actionbar [{"text":"おかしい所を見つけよう！","color":"#ff5555"},{"score":{"name":"#diff_count","objective":"tmp"}},{"text":"/3"}]

#ボタンを置く
execute run setblock 0 -59 114 stone_button[face=wall,facing=north] keep
execute run setblock 4 -59 110 stone_button[face=floor] keep
execute run setblock 2 -55 110 stone_button[face=ceiling] keep
#watch_zoneのついたインタラクションを見ていない
execute if entity @a[predicate=!10sec:stage/8/watch_zone_0] run setblock 0 -59 114 air replace
execute if entity @a[predicate=!10sec:stage/8/watch_zone_1] run setblock 4 -59 110 air replace
execute if entity @a[predicate=!10sec:stage/8/watch_zone_2] run setblock 2 -55 110 air replace
#ボタン押した
execute if block 0 -59 114 stone_button[powered=true] run function 10sec:stage/main/8/0
execute if block 4 -59 110 stone_button[powered=true] run function 10sec:stage/main/8/1
execute if block 2 -55 110 stone_button[powered=true] run function 10sec:stage/main/8/2

#クリア
execute if score #diff_count tmp matches 3.. run advancement grant @a only 10sec:success

#戻り値
return 1