#レシピリセット
recipe take @a *
execute as @e[tag=crafting_item] run data modify entity @s item set value {}
#アイテム削除
clear @a *[minecraft:custom_data={crafted_item:1b}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{crafted_item:1b}}}}]
clear @a *[minecraft:custom_data={craft_item:1b}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{craft_item:1b}}}}]
#進捗剥奪
advancement revoke @a only 10sec:crafted
