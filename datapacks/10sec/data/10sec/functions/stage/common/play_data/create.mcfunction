#元となるストレージ作成
data remove storage 10sec_result: result
data modify storage 10sec_result: resuult set value []

#スコアリセット
scoreboard players set #count challenge 0
scoreboard players set #playtime tick 0
