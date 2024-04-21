#ヒントを表示
title @a actionbar {"text":"コードを入力して扉を開けよう！","color":"#ff5555"}

#インタラクションがクリックされた
execute as @e[tag=button_interaction,predicate=10sec:stage/5/interaction] at @s run function 10sec:stage/main/7/clicked

#戻り値
return 1