#クリア
spawnpoint @a 2 -59 71
tp @a 2 -59 71
execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 2 1
#次のステージへ
scoreboard players set #stage flags 5
setblock 2 -59 73 stone_button[face=floor] replace
#タイトル表示
title @a reset
title @a times 20 60 20
title @a subtitle {"text":"～色合わせ2～"}
title @a title {"text":"Stage5"}
#初期化処理
function 10sec:stage/reset/4/

#戻り値
return 1