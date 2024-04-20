#壁を戻す
fill -2 -59 73 -2 -57 75 white_concrete replace
fill 1 -59 78 3 -57 78 white_concrete replace
#中央を戻す
fill 1 -59 73 3 -57 75 air replace
setblock 2 -58 74 white_concrete replace
#ボタン戻す
setblock 2 -59 73 stone_button[face=floor] replace
#アイテムをクリア
clear @a *[minecraft:custom_data={color_block:1b}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{color_block:1b}}}}]
#インタラクションキル
kill @e[tag=set_color]
