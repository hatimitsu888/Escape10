#ページ追加
$data modify storage 10sec_result: book.pages append value '[{"text":""},{"text":"挑戦$(count)回目\\n"},{"text":"\\nステージ1・・・"},$(stage1),{"text":"\\nステージ2・・・"},$(stage2),{"text":"\\nステージ3・・・"},$(stage3),{"text":"\\nステージ4・・・"},$(stage4),{"text":"\\nステージ5・・・"},$(stage5),{"text":"\\nステージ6・・・"},$(stage6),{"text":"\\nステージ7・・・"},$(stage7),{"text":"\\nステージ8・・・"},$(stage8)]'
