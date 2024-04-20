#ロウソク消す
fill 1 -59 86 3 -59 86 air replace
#ボタン戻す
setblock 2 -59 85 stone_button[face=floor] replace
#アイテムをクリア
clear @a *[minecraft:custom_data={color_candle:1b}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{color_candle:1b}}}}]
