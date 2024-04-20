#ヒントを表示
title @a actionbar {"text":"ステージ2で最後に置いたロウソク3本を置こう（順不同）","color":"#ff5555"}

#ブロックが置かれてたらチェック
execute positioned 3 -59 86 unless block ~ ~ ~ air run function 10sec:stage/main/6/convert_color
execute positioned 2 -59 86 unless block ~ ~ ~ air run function 10sec:stage/main/6/convert_color
execute positioned 1 -59 86 unless block ~ ~ ~ air run function 10sec:stage/main/6/convert_color
#全部置かれた
execute unless block 3 -59 86 air unless block 2 -59 86 air unless block 1 -59 86 air run function 10sec:stage/main/6/check_color

#戻り値
return 1