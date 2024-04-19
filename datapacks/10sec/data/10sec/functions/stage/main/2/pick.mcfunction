#取り出す
scoreboard players set #color_num tmp 0

#1番目
execute store result score #color_num tmp run data get storage 10sec: tmp.rnd_color.value[0]
function 10sec:stage/main/2/setblock {x:3}
data remove storage 10sec: tmp.rnd_color.value[0]

#2番目
execute store result score #color_num tmp run data get storage 10sec: tmp.rnd_color.value[0]
function 10sec:stage/main/2/setblock {x:2}
data remove storage 10sec: tmp.rnd_color.value[0]

#3番目
execute store result score #color_num tmp run data get storage 10sec: tmp.rnd_color.value[0]
function 10sec:stage/main/2/setblock {x:1}
data remove storage 10sec: tmp.rnd_color.value[0]

