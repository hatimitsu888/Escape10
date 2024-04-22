#まだ何も始まっていなかったらプレイヤー数をチェック
execute if score #gamestart flags matches 0 run function 10sec:check_players

#カウントダウン
execute if score #countdown tick matches 1.. run function 10sec:stage/countdown/

#脱出開始したら常時実行する奴
execute if score #mode flags matches 1 run function 10sec:stage/main/

#ゲームスタートフラグが立ったらプレイ時間カウント
execute if score #gamestart flags matches 1 run scoreboard players add #playtime tick 1
