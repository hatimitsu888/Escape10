#ボタン戻す
setblock 2 -59 94 stone_button[face=floor] replace
#RSトーチ戻す
setblock 2 -61 96 air replace
setblock 2 -61 100 air replace
setblock 2 -61 104 air replace
#キーパッド削除
kill @e[tag=keypad]
#紙削除
clear @a *[minecraft:custom_data={code:1b}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{code:1b}}}}]
