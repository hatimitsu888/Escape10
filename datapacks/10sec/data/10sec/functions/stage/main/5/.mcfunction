#ヒントを表示
title @a actionbar {"text":"壁の投影図と同じになるようにしよう！","color":"#ff5555"}

#インタラクションのパーティクル
execute as @e[tag=set_color] at @s run particle dust{color:[1.0,0.5,0.3],scale:1} ~ ~0.5 ~ 0 0 0 0 0 normal
#インタラクションがクリックされた
execute as @e[predicate=10sec:stage/5/interaction] at @s run function 10sec:stage/main/5/clicked

#戻り値
return 1