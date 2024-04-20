#設置
#   0=red 1=yellow 2=green 3=blue 4=purple 5=black
execute if score #convert_color tmp matches 0 run setblock ~ ~ ~ red_concrete replace
execute if score #convert_color tmp matches 1 run setblock ~ ~ ~ yellow_concrete replace
execute if score #convert_color tmp matches 2 run setblock ~ ~ ~ green_concrete replace
execute if score #convert_color tmp matches 3 run setblock ~ ~ ~ blue_concrete replace
execute if score #convert_color tmp matches 4 run setblock ~ ~ ~ purple_concrete replace
execute if score #convert_color tmp matches 5 run setblock ~ ~ ~ black_concrete replace
