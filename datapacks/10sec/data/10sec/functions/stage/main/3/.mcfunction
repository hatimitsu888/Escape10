#ヒントを表示
title @a actionbar {"text":"ピストンでガラスを動かして同じ色のブロックに重ねよう！","color":"#ff5555"}

#マーカーの上にブロックがあるかどうか
execute as @e[tag=check_block] at @s if block ~ ~ ~ lime_stained_glass run advancement grant @a only 10sec:success

#戻り値
return 1