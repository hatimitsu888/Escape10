#数字
$data modify storage 10sec_result: times.sec set value '{"text":"$(sec)"}'
$data modify storage 10sec_result: times.msec set value '{"text":"$(msec)"}'
$execute if score #msec tmp matches ..9 run data modify storage 10sec_result: times.msec set value '{"text":"0$(msec)"}'
