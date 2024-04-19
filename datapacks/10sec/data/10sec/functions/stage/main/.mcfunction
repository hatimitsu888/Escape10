#現在のステージによって処理変
execute if score #stage flags matches 0 run function 10sec:stage/main/0/
execute if score #stage flags matches 1 run function 10sec:stage/main/1/
execute if score #stage flags matches 2 run function 10sec:stage/main/2/
