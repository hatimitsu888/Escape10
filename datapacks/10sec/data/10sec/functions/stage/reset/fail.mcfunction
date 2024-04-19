#ボスバー削除
bossbar remove countdown
#モード切替
scoreboard players set #mode flags 0
#進捗剥奪
advancement revoke @a only 10sec:start
#ヒント非表示
title @a actionbar {"text":""}

#現在のステージによって処理変
execute if score #stage flags matches 0 run function 10sec:stage/reset/0/f
execute if score #stage flags matches 1 run function 10sec:stage/reset/1/f
execute if score #stage flags matches 2 run function 10sec:stage/reset/2/f

#死
kill @a
