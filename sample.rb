# 今日の曜日を表示するコードを記述してください。
# ただし、金曜日だった場合だけ以下のように表示の内容を変えてください。

# require "date"

# d = Date.today
# print(d.year, "年", d.month, "月", d.day, "日")
# day = Date.today.wday
# youbi = %w[日 月 火 水 木 金 土]
# if day == 5
#   print(youbi[day],"曜日だ！！")
# else
#   print(youbi[day],"曜日")
# end

# 解答
require "date"

day = Date.today.wday
days = ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]

if day == 5
  puts "今日は#{days[day]}だ！！！"
else
  puts "今日は#{days[day]}"
end
