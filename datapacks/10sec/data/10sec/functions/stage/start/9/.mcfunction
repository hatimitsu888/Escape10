#ボタン除去
setblock 2 106 122 air destroy

#カウントストップ&床破壊
schedule function 10sec:stage/start/9/stop 9s append

#リセット&TP
schedule function 10sec:stage/start/9/tp 13s append
