#インタラクション削除
kill @e[tag=watch_zone]
#ボタン戻す
setblock 2 -55 15 air replace
#テキスト戻す
summon text_display 2.5 -59.0 15.5 {Tags:["start_text"],billboard:"vertical",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},text:'{"text":"ボタンを押してスタート"}'}
