#テレポート
tp @a 2 -59 130 -90 0

#床戻す
fill 0 105 120 4 105 124 quartz_block replace

#ボタン戻す
setblock 2 106 122 stone_button[face=floor] replace

#全部リセット
function 10sec:stage/reset/all_reset

#音鳴らす
execute as @a at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1 1
#タイトル表示
title @a reset
title @a times 20 60 20
title @a subtitle {"text":"Thank you for playing!"}
title @a title {"text":"～ゲームクリア～"}

#本を設置
function 10sec:stage/common/play_data/book/create
