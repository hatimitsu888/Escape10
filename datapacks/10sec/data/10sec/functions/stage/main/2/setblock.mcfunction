#スコアに応じたブロックを設置
$execute if score #color_num tmp matches 0 run setblock $(x) -60 41 red_concrete
$execute if score #color_num tmp matches 1 run setblock $(x) -60 41 orange_concrete
$execute if score #color_num tmp matches 2 run setblock $(x) -60 41 yellow_concrete
$execute if score #color_num tmp matches 3 run setblock $(x) -60 41 green_concrete
$execute if score #color_num tmp matches 4 run setblock $(x) -60 41 cyan_concrete
$execute if score #color_num tmp matches 5 run setblock $(x) -60 41 blue_concrete
$execute if score #color_num tmp matches 6 run setblock $(x) -60 41 purple_concrete
$execute if score #color_num tmp matches 7 run setblock $(x) -60 41 pink_concrete
$execute if score #color_num tmp matches 8 run setblock $(x) -60 41 black_concrete
