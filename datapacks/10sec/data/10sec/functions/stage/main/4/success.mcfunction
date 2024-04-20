#音
execute as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 1 1
#進捗剥奪
advancement revoke @a only 10sec:crafted
#レシピ削除
recipe take @a *
#アイテムを空白に
execute as @e[tag=crafting_item] run data modify entity @s item set value {}
#素材を削除
clear @a *[minecraft:custom_data={craft_item:1b}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{craft_item:1b}}}}]
#フェーズ繰り上げ
scoreboard players add #craft_phase tmp 1
#次の問題
execute if score #craft_phase tmp matches ..1 run function 10sec:stage/main/4/create_recipe

#クリア
execute if score #craft_phase tmp matches 2.. run advancement grant @a only 10sec:success
