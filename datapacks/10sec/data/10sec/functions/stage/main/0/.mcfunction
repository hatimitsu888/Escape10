#ヒントを表示
title @a actionbar {"text":"おかしい所を見つけろ！","color":"#ff5555"}

#ボタンを置く
setblock 2 -55 15 stone_button[face=ceiling] keep
#watch_zoneのついたインタラクションを見ていない
execute if entity @a[predicate=!10sec:stage/0/watch_zone] run setblock 2 -55 15 air replace
