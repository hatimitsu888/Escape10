#素材を付与
execute if score #craft_phase tmp matches 0 run loot give @a loot 10sec:iron_equipments_item
execute if score #craft_phase tmp matches 1 run loot give @a loot 10sec:diamond_tool_item
#レシピ解除
execute if score #craft_phase tmp matches 0 run function 10sec:stage/main/4/give_recipe/iron_equipments
execute if score #craft_phase tmp matches 1 run function 10sec:stage/main/4/give_recipe/diamond_tools
#正解をリセット
data remove storage 10sec: tmp.craft.success
#レシピ選択
execute if score #craft_phase tmp matches 0 store result storage 10sec: tmp.craft.select.recipe int 1 run random value 0..3
execute if score #craft_phase tmp matches 1 store result storage 10sec: tmp.craft.select.recipe int 1 run random value 0..4
#フェーズを代入
execute store result storage 10sec: tmp.craft.select.phase int 1 run scoreboard players get #craft_phase tmp
#レシピを入れる
function 10sec:stage/main/4/select_recipe with storage 10sec: tmp.craft.select
