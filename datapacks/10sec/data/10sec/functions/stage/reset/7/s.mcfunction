#クリア
spawnpoint @a 2 -59 110
tp @a 2 -59 110
execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 2 1
#次のステージへ
scoreboard players set #stage flags 8
setblock 2 -59 112 stone_button[face=floor] replace
#タイトル表示
title @a reset
title @a times 20 60 20
title @a subtitle {"text":"～間違い探し～"}
title @a title {"text":"Stage8"}
#初期化処理
function 10sec:stage/reset/7/

#戻り値
return 1