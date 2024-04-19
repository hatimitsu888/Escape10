#計算用スコア
scoreboard players set #100 math 100
scoreboard players set #20 math 20

#現在の秒数を100倍
scoreboard players operation #sec tick = #countdown tick
scoreboard players operation #sec tick *= #100 math
#割り算
scoreboard players operation #sec tick /= #20 math
#結果
scoreboard players operation #msec tick = #sec tick
scoreboard players operation #msec tick %= #100 math
scoreboard players operation #sec tick /= #100 math
