#ボタン除去
setblock 2 -59 112 air destroy
#インタラクションを設置
summon interaction 0.95 -59 115.0 {Tags:["watch_zone","0"],width:0.1f,height:1f}
summon interaction 0.85 -59 115.0 {Tags:["watch_zone","0"],width:0.1f,height:1f}
summon interaction 0.75 -59 115.0 {Tags:["watch_zone","0"],width:0.1f,height:1f}
summon interaction 0.65 -59 115.0 {Tags:["watch_zone","0"],width:0.1f,height:1f}
summon interaction 0.55 -59 115.0 {Tags:["watch_zone","0"],width:0.1f,height:1f}
summon interaction 0.45 -59 115.0 {Tags:["watch_zone","0"],width:0.1f,height:1f}
summon interaction 0.35 -59 115.0 {Tags:["watch_zone","0"],width:0.1f,height:1f}
summon interaction 0.25 -59 115.0 {Tags:["watch_zone","0"],width:0.1f,height:1f}
summon interaction 0.15 -59 115.0 {Tags:["watch_zone","0"],width:0.1f,height:1f}
summon interaction 0.05 -59 115.0 {Tags:["watch_zone","0"],width:0.1f,height:1f}
summon interaction 4.5 -59 110.5 {Tags:["watch_zone","1"],width:1f,height:0.1f}
summon interaction 2.5 -54.1 110.5 {Tags:["watch_zone","2"],width:1f,height:1f}
#間違いを設置
setblock 0 -59 115 bone_block[axis=y] replace
setblock 4 -60 110 quartz_bricks replace
setblock 2 -54 110 smooth_quartz replace
#カウント
scoreboard players set #diff_count tmp 0
