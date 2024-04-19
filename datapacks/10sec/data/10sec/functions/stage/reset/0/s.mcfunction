#クリア
spawnpoint @a 2 -59 23
tp @a 2 -59 23
execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 2 1
#次のステージへ
scoreboard players set #stage flags 1
setblock 2 -58 28 stone_button[face=floor] replace
#タイトル表示
title @a times 1s 3s 1s
title @a title {"text":"Stage1"}
title @a subtitle {"text":"～ボタン～"}
#初期化処理
function 10sec:stage/reset/0/
