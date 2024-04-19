#1~9の数字をランダムに並べる
execute store result storage 10sec: tmp.rnd_color.check.num int 1 run random value 0..8

#数字が出てきてるか調べる
function 10sec:stage/start/2/check with storage 10sec: tmp.rnd_color.check

#配列[8]が出るまで再帰する
execute unless data storage 10sec: tmp.rnd_color.value[8] run function 10sec:stage/start/2/rnd
