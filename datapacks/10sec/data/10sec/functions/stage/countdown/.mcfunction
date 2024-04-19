#カウントダウン
scoreboard players remove #countdown tick 1
#ボスバーに値を代入
execute store result bossbar countdown value run scoreboard players get #countdown tick
#秒数を計算
function 10sec:stage/countdown/math
#ボスバーのタイトルに代入
bossbar set countdown name [{"text":"あと "},{"score":{"name":"#sec","objective":"tick"}},{"text":"."},{"score":{"name":"#msec","objective":"tick"}},{"text":" 秒"}]

#音を鳴らす
execute as @a at @s if predicate 10sec:countdown_se run playsound block.note_block.hat master @s ~ ~ ~ 1 1 1
execute as @a at @s if predicate 10sec:countdown_se_3 run playsound block.note_block.pling master @s ~ ~ ~ 1 2 1

#カウント終了
execute if score #countdown tick matches ..0 run function 10sec:stage/reset/fail
