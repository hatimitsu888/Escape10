#プレイヤーの数を数える
execute store result score #players player_cnt if entity @a
#ボタン置く
setblock 2 -59 15 stone_button[face=floor] keep
#プレイヤー多い
execute if score #players player_cnt matches 2.. run setblock 2 -59 15 air replace
