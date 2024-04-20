#クリア
spawnpoint @a 2 -59 61
tp @a 2 -59 61
execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 2 1
#次のステージへ
scoreboard players set #stage flags 4
setblock 2 -58 63 stone_button[face=floor] replace
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{crafted_item:1b}}}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{craft_item:1b}}}}]
#タイトル表示
title @a reset
title @a times 20 60 20
title @a subtitle {"text":"～クラフト～"}
title @a title {"text":"Stage4"}
#初期化処理
function 10sec:stage/reset/3/

#戻り値
return 1