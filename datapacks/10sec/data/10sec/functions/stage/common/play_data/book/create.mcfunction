#クリアタイム計算
function 10sec:stage/common/play_data/book/time

#最初のページ
data remove storage 10sec_result: book
execute store result storage 10sec_result: book.first.minute int 1 run scoreboard players get #minute challenge
execute store result storage 10sec_result: book.first.sec int 1 run scoreboard players get #sec challenge
execute store result storage 10sec_result: book.first.msec int 1 run scoreboard players get #msec challenge
execute store result storage 10sec_result: book.first.count int 1 run scoreboard players get #count challenge
data modify storage 10sec_result: book.pages set value []
function 10sec:stage/common/play_data/book/first_write with storage 10sec_result: book.first

#回数カウント
scoreboard players set #playcount tmp 1

#データを複製しておく
data modify storage 10sec_result: write_result set from storage 10sec_result: result
#2ページ目以降
function 10sec:stage/common/play_data/book/add_page

#本を設置
data modify block 0 -59 130 Book set value {id:"minecraft:written_book",Count:1b,components:{"minecraft:written_book_content":{title:"Congratulations!",author:"脱出10秒前",pages:[]}}}
data modify block 0 -59 130 Book.components.minecraft:written_book_content.pages set from storage 10sec_result: book.pages
