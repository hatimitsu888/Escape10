#ボスバー削除
bossbar remove countdown
#カウントダウンストップ
scoreboard players set #countdown tick 0
#モード切替
scoreboard players set #mode flags 0
#進捗剥奪
advancement revoke @a only 10sec:start
#ヒント非表示
title @a actionbar {"text":""}

#現在のステージによって処理変
execute if score #stage flags matches 0 if function 10sec:stage/reset/0/s run return 0
execute if score #stage flags matches 1 if function 10sec:stage/reset/1/s run return 0
execute if score #stage flags matches 2 if function 10sec:stage/reset/2/s run return 0
execute if score #stage flags matches 3 if function 10sec:stage/reset/3/s run return 0
execute if score #stage flags matches 4 if function 10sec:stage/reset/4/s run return 0
execute if score #stage flags matches 5 if function 10sec:stage/reset/5/s run return 0
execute if score #stage flags matches 6 if function 10sec:stage/reset/6/s run return 0
