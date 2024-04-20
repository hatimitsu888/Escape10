#マーカー削除
kill @e[tag=check_block]
#ステージ復旧
fill 1 -59 50 3 -59 52 air replace lime_stained_glass
fill 1 -60 50 3 -60 52 quartz_block replace lime_concrete
#ボタン
fill 0 -57 49 4 -57 53 air replace stone_button
setblock 2 -57 51 stone_button[face=floor] replace
