#ボタンを撤去
setblock 2 -57 51 air destroy
#ボタン設置
setblock 1 -57 49 stone_button[face=floor] replace
setblock 3 -57 49 stone_button[face=floor] replace

setblock 0 -57 50 stone_button[face=floor] replace
setblock 4 -57 50 stone_button[face=floor] replace

setblock 0 -57 52 stone_button[face=floor] replace
setblock 4 -57 52 stone_button[face=floor] replace

setblock 1 -57 53 stone_button[face=floor] replace
setblock 3 -57 53 stone_button[face=floor] replace
#マーカー設置
summon marker 2 -59 50 {Tags:["check_block"],Rotation:[45.0f, 0.0f]}
summon marker 1 -59 51 {Tags:["check_block"],Rotation:[-45.0f, 0.0f]}
summon marker 3 -59 51 {Tags:["check_block"],Rotation:[135.0f, 0.0f]}
summon marker 2 -59 52 {Tags:["check_block"],Rotation:[-135.0f, 0.0f]}
#ゴール決め
execute as @e[tag=check_block,limit=1,sort=random] at @s run setblock ~ ~-1 ~ lime_concrete replace
#余計なマーカーを削除
execute as @e[tag=check_block] at @s unless block ~ ~-1 ~ lime_concrete run kill @s
#最初の石を置く
execute as @e[tag=check_block] at @s rotated ~ 0 run setblock ^ ^ ^1 lime_stained_glass replace
