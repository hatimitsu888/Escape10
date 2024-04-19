#クリアできるように
advancement revoke @a only 10sec:success
#カウントダウン開始
function 10sec:stage/common/create_countdown

#現在のステージによって処理変
execute if score #stage flags matches 0 run function 10sec:stage/start/0/
execute if score #stage flags matches 1 run function 10sec:stage/start/1/
execute if score #stage flags matches 2 run function 10sec:stage/start/2/
