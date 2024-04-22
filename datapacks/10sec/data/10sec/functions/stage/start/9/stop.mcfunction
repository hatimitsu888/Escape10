#ボスバー削除
bossbar remove countdown
#カウントダウンストップ
scoreboard players set #countdown tick 0
#モード切替
scoreboard players set #mode flags 0
#進捗剥奪
advancement revoke @a only 10sec:start

#床破壊
fill 0 105 120 4 105 124 air destroy
