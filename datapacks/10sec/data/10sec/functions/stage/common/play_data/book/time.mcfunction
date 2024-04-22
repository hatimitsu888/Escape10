#計算用スコア
scoreboard players set #100 math 100
scoreboard players set #20 math 20

#現在の秒数を100倍
scoreboard players operation #sec challenge = #playtime tick
scoreboard players operation #sec challenge *= #100 math
#割り算
scoreboard players operation #sec challenge /= #20 math
#結果
scoreboard players operation #msec challenge = #sec challenge
scoreboard players operation #msec challenge %= #100 math
scoreboard players operation #sec challenge /= #100 math
