#クリア
spawnpoint @a 2 -59 93
tp @a 2 -59 93
execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 2 1
#次のステージへ
scoreboard players set #stage flags 7
setblock 2 -59 94 stone_button[face=floor] replace
#タイトル表示
title @a reset
title @a times 20 60 20
title @a subtitle {"text":"～扉～"}
title @a title {"text":"Stage7"}
#初期化処理
function 10sec:stage/reset/6/

#戻り値
return 1