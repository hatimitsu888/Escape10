#クリア
spawnpoint @a 2 -59 38
tp @a 2 -59 38
execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 2 1
#次のステージへ
scoreboard players set #stage flags 2
setblock 2 -59 40 stone_button[face=floor] replace
#タイトル表示
title @a reset
title @a times 20 60 20
title @a subtitle {"text":"～ロウソク～"}
title @a title {"text":"Stage2"}
#初期化処理
function 10sec:stage/reset/1/
