# Rubyのメソッドを定義するときに、様々な引数の渡し方ができます。
# 以下の機能を利用したメソッドのコードを記述してください。
# メソッドの内容は問いません。

# ①デフォルト値
def name(first_name = "tanaka", last_name = "souta")
  puts "my name is #{first_name} #{last_name}"
end
name("dan")



# ②可変長引数

def gse(*numbers)
  puts "今日の特急は#{numbers.join}です。"
end

gse("1号","2号","3号","4号")


# ③キーワード引数
def apple(color: "red", price: 200, size:)
  puts "#{color}, #{price}, #{size}"
end

apple
