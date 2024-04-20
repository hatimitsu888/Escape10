#完全初期化

#フラグ戻す
scoreboard players set #gamestart flags 0
scoreboard players set #stage flags 0
scoreboard players set #mode flags 0
#リスポーン位置
spawnpoint @a 2 -59 13

#表示エンティティ戻す
kill @e[tag=crafting_table]
kill @e[tag=crafting_item]
summon block_display 2.5 -56.5 66.5 {Tags:["crafting_table"],brightness:{sky:15,block:15},transformation:{left_rotation:{axis:[1f,0f,0f],angle:-1.575f},right_rotation:[0f,0f,0f,1f],translation:[-2f,-2f,0.5f],scale:[4f,1.1f,4f]},block_state:{Name:"minecraft:crafting_table"}}
summon item_display 1.75 -57.25 65.9 {Tags:["crafting_item","8"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{}}
summon item_display 2.50 -57.25 65.9 {Tags:["crafting_item","7"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{}}
summon item_display 3.25 -57.25 65.9 {Tags:["crafting_item","6"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{}}
summon item_display 1.75 -56.50 65.9 {Tags:["crafting_item","5"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{}}
summon item_display 2.50 -56.50 65.9 {Tags:["crafting_item","4"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{}}
summon item_display 3.25 -56.50 65.9 {Tags:["crafting_item","3"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{}}
summon item_display 1.75 -55.75 65.9 {Tags:["crafting_item","2"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{}}
summon item_display 2.50 -55.75 65.9 {Tags:["crafting_item","1"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{}}
summon item_display 3.25 -55.75 65.9 {Tags:["crafting_item","0"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{}}
