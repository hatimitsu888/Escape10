#確認用スコア
scoreboard players set #color_check tmp 1
#一致するかをチェック
data remove storage 10sec: tmp.remember_colors.check_colors
data modify storage 10sec: tmp.remember_colors.check_colors set from storage 10sec: tmp.remember_colors.used_colors
execute store success score #color_check tmp run data modify storage 10sec: tmp.remember_colors.check_colors set from storage 10sec: tmp.remember_colors.result_colors

#クリア
execute if score #color_check tmp matches 0 run advancement grant @a only 10sec:success
