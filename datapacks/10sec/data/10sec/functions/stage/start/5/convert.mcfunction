#数字を変換して設置する
scoreboard players set #convert_color tmp 0
execute store result score #convert_color tmp run data get storage 10sec: tmp.color_match.2D[0]
execute positioned ^ ^-1 ^ run function 10sec:stage/start/5/setblock
execute store result score #convert_color tmp run data get storage 10sec: tmp.color_match.2D[1]
execute positioned ^-1 ^ ^ run function 10sec:stage/start/5/setblock
execute store result score #convert_color tmp run data get storage 10sec: tmp.color_match.2D[2]
execute positioned ^ ^ ^ run function 10sec:stage/start/5/setblock
execute store result score #convert_color tmp run data get storage 10sec: tmp.color_match.2D[3]
execute positioned ^1 ^ ^ run function 10sec:stage/start/5/setblock
execute store result score #convert_color tmp run data get storage 10sec: tmp.color_match.2D[4]
execute positioned ^ ^1 ^ run function 10sec:stage/start/5/setblock
