#最初のページ
$data modify storage 10sec_result: book.pages append value '[{"text":"","bold":false},{"text":"Congratulations!!!","bold":true,"color":"#ff0000"},{"text":"\\n\\n\\n挑戦時間：$(minute)分$(sec).$(msec)秒"},{"text":"\\n\\n\\n挑戦回数：$(count) 回"}]'
