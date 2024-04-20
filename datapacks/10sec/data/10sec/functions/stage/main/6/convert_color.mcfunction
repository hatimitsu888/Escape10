#どの色が置かれてるか
# 0=red 1=orange 2=yellow 3=green 4=cyan 5=blue 6=purple 7=pink 8=black
execute if block ~ ~ ~ red_candle run data modify storage 10sec: tmp.remember_colors.result_colors[0] set value 1
execute if block ~ ~ ~ orange_candle run data modify storage 10sec: tmp.remember_colors.result_colors[1] set value 1
execute if block ~ ~ ~ yellow_candle run data modify storage 10sec: tmp.remember_colors.result_colors[2] set value 1
execute if block ~ ~ ~ green_candle run data modify storage 10sec: tmp.remember_colors.result_colors[3] set value 1
execute if block ~ ~ ~ cyan_candle run data modify storage 10sec: tmp.remember_colors.result_colors[4] set value 1
execute if block ~ ~ ~ blue_candle run data modify storage 10sec: tmp.remember_colors.result_colors[5] set value 1
execute if block ~ ~ ~ purple_candle run data modify storage 10sec: tmp.remember_colors.result_colors[6] set value 1
execute if block ~ ~ ~ pink_candle run data modify storage 10sec: tmp.remember_colors.result_colors[7] set value 1
execute if block ~ ~ ~ black_candle run data modify storage 10sec: tmp.remember_colors.result_colors[8] set value 1
