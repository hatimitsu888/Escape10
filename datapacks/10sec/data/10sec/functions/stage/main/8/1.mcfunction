#音を鳴らす
execute as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 1 1
#インタラクションをキル
kill @e[tag=watch_zone,tag=1]
#ボタン除去
setblock 4 -59 110 air destroy
#間違いを戻す
setblock 4 -60 110 quartz_block destroy
#スコア増加
scoreboard players add #diff_count tmp 1
