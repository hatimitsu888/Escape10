#フェーズ繰り上げ
scoreboard players add #color_phase tmp 1
#音を鳴らす
execute as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 1 1
#ロウソク除去
fill 1 -59 41 3 -59 41 air replace
#フェーズ2以下なら次の色へ
execute if score #color_phase tmp matches ..2 run function 10sec:stage/main/2/pick
#フェーズ3以上ならクリア
execute if score #color_phase tmp matches 3.. run advancement grant @a only 10sec:success
