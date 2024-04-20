#色リセット
fill 1 -60 41 3 -60 41 white_concrete replace
#ロウソク除去
fill 1 -59 41 3 -59 41 air replace
#ボタン設置
setblock 2 -59 40 stone_button[face=floor] replace
#ロウソクをクリア
clear @a *[minecraft:custom_data={color_candle:1b}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{color_candle:1b}}}}]
