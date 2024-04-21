#クリアできるように
advancement revoke @a only 10sec:success
#カウントダウン開始
function 10sec:stage/common/create_countdown

#現在のステージによって処理変
execute if score #stage flags matches 0 run function 10sec:stage/start/0/
execute if score #stage flags matches 1 run function 10sec:stage/start/1/
execute if score #stage flags matches 2 run function 10sec:stage/start/2/
execute if score #stage flags matches 3 run function 10sec:stage/start/3/
execute if score #stage flags matches 4 run function 10sec:stage/start/4/
execute if score #stage flags matches 5 run function 10sec:stage/start/5/
execute if score #stage flags matches 6 run function 10sec:stage/start/6/
execute if score #stage flags matches 7 run function 10sec:stage/start/7/
execute if score #stage flags matches 8 run function 10sec:stage/start/8/
