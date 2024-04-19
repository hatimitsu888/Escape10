#プレイヤーの数を数える
scoreboard objectives add player_cnt dummy
scoreboard players add #players player_cnt 0

#フラグ
scoreboard objectives add flags dummy
scoreboard players add #gamestart flags 0
scoreboard players add #stage flags 0
scoreboard players add #mode flags 0
#   mode = 0・・・待機状態
#   mode = 1・・・脱出中
#define score_holder #stage 現在のステージ
#define score_holder #mode 現在のモード

#秒数
scoreboard objectives add tick dummy
scoreboard players add #countdown tick 0
#define score_holder #countdown カウントダウン
    #表示用
    scoreboard players add #sec tick 0
    scoreboard players add #msec tick 0
    #define score_holder #sec 秒数
    #define score_holder #msec ミリ秒(だけどここでは100分の1秒)

#計算用
scoreboard objectives add math dummy
#一時保存
scoreboard objectives add tmp dummy
data remove storage 10sec: tmp
