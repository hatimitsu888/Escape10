#ヒントを表示
title @a actionbar [{"text":"レシピの通りにクラフトしよう！","color":"#ff5555"},{"score":{"name":"#craft_phase","objective":"tmp"}},{"text":"/2"}]

#クラフトしたアイテムは削除
clear @a *[minecraft:custom_data={crafted_item:1b}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{crafted_item:1b}}}}]

#戻り値
return 1