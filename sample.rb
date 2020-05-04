def post_review(a_cart)
# 商品名、値段、個数を入力させ合計金額を出し、配列に保存してください。
  puts "商品名を入力してください："
  name = gets.chomp
  puts "値段を入力してください："
  price= gets.chomp.to_i
  puts "個数を入力してください："
  number = gets.chomp.to_i
  line = "---------------------------"
  post ={name: name, price: price, number: number}
# 入力された値の描画
  puts "商品名 : #{post[:name]}\n#{line}"
  puts "値段 : #{post[:price]}\n#{line}"
  puts "個数 : #{post[:number]}\n#{line}"
  puts "合計金額 : #{post[:price] * post[:number]}\n#{line}"
# 配列オブジェクトに追加
  a_cart << post
# a_cartをメソッドの呼び出し元に返す
  return a_cart
end

def check_reviews(a_cart)
# 保存された全商品の一覧を表示
# 商品名、値段、個数を表示
  total_price = 0
  line = "---------------------------"
  a_cart.each do |post|
    puts "#{post[:name]}/#{post[:price]}円/#{post[:number]}個"
    total_price += post[:price] * post[:number]
  end
# 全ての商品の合計金額を表示
  puts "合計金額 : #{total_price}"
  puts "[0]購入確定する"
  puts "[1]買い物を続ける"
  input = gets.to_i

  if input == 0
    buy_program(total_price)
  elsif input == 1
    return
  else
    exception
  end
end

def buy_program(total_price)
  puts "合計金額 : #{total_price}"
  puts "支払う金額を入力してください："
  input = gets.to_i
# if文を使用し条件ごとの処理を実行
  if input >= total_price
# ユーザーに支払う金額を入力させ合計金額からマイナスしてください
    change = input - total_price
# お釣りを表示してください
    puts "お釣り : #{change}"

# 金額が足りない場合はもう一度、buy_program(total_price)を実行
  else
    puts "金額が足りません"
    buy_program(total_proce)
  end
end

def end_program
  # プログラムを終了する記述
  exit
end

def exception
  puts "入力された値は無効な値です"
end

cart = []             # 配列オブジェクトcartの生成

while true do
# メニューの表示
  puts "商品数: #{cart.length}"
  puts "[0]商品をカートに入れる"
  unless cart.empty?       #カートに商品がない場合は[1]は選択できない
    puts "[1]カートを確認する"
  end
  puts "[2]アプリを終了する"
  input = gets.to_i

  if input == 0 then
    cart = post_review(cart)  # post_reviewメソッドの呼び出し
  elsif input == 1 then
    check_reviews(cart) # check_reviewsメソッドの呼び出し
  elsif input == 2 then
    end_program     # end_programメソッドの呼び出し
  else
    exception           # exceptionメソッドの呼び出し
  end
end
