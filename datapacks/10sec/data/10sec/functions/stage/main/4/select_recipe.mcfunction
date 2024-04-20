#レシピを取り出す
$execute as @e[tag=crafting_item,tag=0] run data modify entity @s item set from storage 10sec: tmp.craft.$(phase)[$(recipe)].recipe.0
$execute as @e[tag=crafting_item,tag=1] run data modify entity @s item set from storage 10sec: tmp.craft.$(phase)[$(recipe)].recipe.1
$execute as @e[tag=crafting_item,tag=2] run data modify entity @s item set from storage 10sec: tmp.craft.$(phase)[$(recipe)].recipe.2
$execute as @e[tag=crafting_item,tag=3] run data modify entity @s item set from storage 10sec: tmp.craft.$(phase)[$(recipe)].recipe.3
$execute as @e[tag=crafting_item,tag=4] run data modify entity @s item set from storage 10sec: tmp.craft.$(phase)[$(recipe)].recipe.4
$execute as @e[tag=crafting_item,tag=5] run data modify entity @s item set from storage 10sec: tmp.craft.$(phase)[$(recipe)].recipe.5
$execute as @e[tag=crafting_item,tag=6] run data modify entity @s item set from storage 10sec: tmp.craft.$(phase)[$(recipe)].recipe.6
$execute as @e[tag=crafting_item,tag=7] run data modify entity @s item set from storage 10sec: tmp.craft.$(phase)[$(recipe)].recipe.7
$execute as @e[tag=crafting_item,tag=8] run data modify entity @s item set from storage 10sec: tmp.craft.$(phase)[$(recipe)].recipe.8

#正解を保存
$data modify storage 10sec: tmp.craft.success set from storage 10sec: tmp.craft.$(phase)[$(recipe)].id
