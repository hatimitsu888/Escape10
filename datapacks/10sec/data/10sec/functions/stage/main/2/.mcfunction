#ヒントを表示
title @a actionbar {"text":"同じ色のロウソクを置こう！","color":"#ff5555"}

#ロウソクが置かれていたら
execute unless block 3 -59 41 air unless block 2 -59 41 air unless block 1 -59 41 air run function 10sec:stage/main/2/phase

#戻り値
return 1