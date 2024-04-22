#マクロで入力
$data modify storage 10sec_result: write_data.tmp set value '[{"text":""},{"text":"\\\\u2714  ","color":"#00ff00"},$(sec),{"text":"."},$(msec),{"text":"秒"}]'
