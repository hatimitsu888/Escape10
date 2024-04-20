#音を鳴らす
execute as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 1 1

#データクリア
data remove entity @s interaction
data remove entity @s attack

#何を持ってる
#   0=red 1=yellow 2=green 3=blue 4=purple 5=black
scoreboard players set #color_id tmp -1
execute if data entity @p {SelectedItem:{id:"minecraft:red_stained_glass"}} run scoreboard players set #color_id tmp 0
execute if data entity @p {SelectedItem:{id:"minecraft:yellow_stained_glass"}} run scoreboard players set #color_id tmp 1
execute if data entity @p {SelectedItem:{id:"minecraft:green_stained_glass"}} run scoreboard players set #color_id tmp 2
execute if data entity @p {SelectedItem:{id:"minecraft:blue_stained_glass"}} run scoreboard players set #color_id tmp 3
execute if data entity @p {SelectedItem:{id:"minecraft:purple_stained_glass"}} run scoreboard players set #color_id tmp 4
execute if data entity @p {SelectedItem:{id:"minecraft:black_stained_glass"}} run scoreboard players set #color_id tmp 5

#データ格納
execute if entity @s[tag=down] store result storage 10sec: tmp.color_match.3D_result.down int 1 run scoreboard players get #color_id tmp
execute if entity @s[tag=north] store result storage 10sec: tmp.color_match.3D_result.north int 1 run scoreboard players get #color_id tmp
execute if entity @s[tag=west] store result storage 10sec: tmp.color_match.3D_result.west int 1 run scoreboard players get #color_id tmp
execute if entity @s[tag=south] store result storage 10sec: tmp.color_match.3D_result.south int 1 run scoreboard players get #color_id tmp
execute if entity @s[tag=east] store result storage 10sec: tmp.color_match.3D_result.east int 1 run scoreboard players get #color_id tmp
execute if entity @s[tag=up] store result storage 10sec: tmp.color_match.3D_result.up int 1 run scoreboard players get #color_id tmp

#ブロック設置
execute if score #color_id tmp matches -1 run setblock ~ ~ ~ air
execute if score #color_id tmp matches 0 run setblock ~ ~ ~ red_stained_glass
execute if score #color_id tmp matches 1 run setblock ~ ~ ~ yellow_stained_glass
execute if score #color_id tmp matches 2 run setblock ~ ~ ~ green_stained_glass
execute if score #color_id tmp matches 3 run setblock ~ ~ ~ blue_stained_glass
execute if score #color_id tmp matches 4 run setblock ~ ~ ~ purple_stained_glass
execute if score #color_id tmp matches 5 run setblock ~ ~ ~ black_stained_glass

#正解チェック
data remove storage 10sec: tmp.color_match.3D_check
data modify storage 10sec: tmp.color_match.3D_check set from storage 10sec: tmp.color_match.3D
scoreboard players set #color_check tmp 1
execute store success score #color_check tmp run data modify storage 10sec: tmp.color_match.3D_check set from storage 10sec: tmp.color_match.3D_result
#クリア
execute if score #color_check tmp matches 0 run advancement grant @a only 10sec:success
