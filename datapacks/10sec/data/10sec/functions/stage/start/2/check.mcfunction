scoreboard players set #success tmp 0
#出てきた数字が既に出ているかを調べる 0=ある 1=ない
$execute store success score #success tmp run data modify storage 10sec: tmp.rnd_color.used[$(num)] set value 1
#結果が1なら追加
$execute if score #success tmp matches 1 run data modify storage 10sec: tmp.rnd_color.value append value $(num)
