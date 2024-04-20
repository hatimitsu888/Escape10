#クリア
spawnpoint @a 2 -57 47
tp @a 2 -57 47
execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 2 1
#次のステージへ
scoreboard players set #stage flags 3
setblock 2 -57 51 stone_button[face=floor] replace
fill 1 -59 50 3 -59 52 air replace lime_stained_glass
#タイトル表示
title @a reset
title @a times 20 60 20
title @a subtitle {"text":"～ピストン～"}
title @a title {"text":"Stage3"}
#初期化処理
function 10sec:stage/reset/2/

#戻り値
return 1