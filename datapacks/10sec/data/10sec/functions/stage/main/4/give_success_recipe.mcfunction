#正解のレシピを置き換え
$execute if score #craft_phase tmp matches 0 run recipe take @a 10sec:iron_equipments/fail/$(name)
$execute if score #craft_phase tmp matches 0 run recipe give @a 10sec:iron_equipments/$(name)
$execute if score #craft_phase tmp matches 1 run recipe take @a 10sec:diamond_tools/fail/$(name)
$execute if score #craft_phase tmp matches 1 run recipe give @a 10sec:diamond_tools/$(name)
