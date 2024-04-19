#カウントダウンのスコア設定(10秒)
scoreboard players set #countdown tick 200
#ボスバー設定
bossbar add countdown {"text":"あと 10.00 秒"}
bossbar set countdown color red
bossbar set countdown max 200
bossbar set countdown style progress
bossbar set countdown value 200
bossbar set countdown visible true
bossbar set countdown players @a
#モード切替
scoreboard players set #mode flags 1

#音を鳴らす
execute as @a at @s run playsound block.note_block.bell master @s ~ ~ ~ 1 2 1
