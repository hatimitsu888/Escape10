#スタートボタンを押す
kill @e[tag=start_text]
setblock 2 -59 15 air destroy
#タイトル表示
title @a times 20 60 20
title @a title [{"text":"脱出","color":"#ffffff"},{"text":"10","color":"#ff5555"},{"text":"秒前"}]
#フラグ
scoreboard players set #gamestart flags 1
scoreboard players set #stage flags 0
scoreboard players set #mode flags 0
#6秒後、脱出スタート
schedule function 10sec:start/start_escape 6s
