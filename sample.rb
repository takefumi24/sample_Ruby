def post_review
  post={}
  puts "ジャンルを入力してください："
  post[:genre] = gets.chomp
  puts "タイトルを入力してください："
  post[:title] = gets.chomp
  puts "感想を入力してください："
  post[:review] = gets.chomp
  line = "---------------------------"

  puts "ジャンル : #{post[:genre]}\n#{line}"
  puts "タイトル : #{post[:title]}\n#{line}"
  puts "感想 :\n#{post[:review]}\n#{line}"
end

def read_review
end

def end_program
  exit
end

def exception
  puts "入力された値は無効な値です"
end

while true do
  puts "レビュー数：0"
  puts "[0]レビューを書く"
  puts "[1]レビューを読む"
  puts "[2]アプリを終了する"
  input = gets.to_i
  if input==0
    post_review
  elsif input==1
    read_review
  elsif input==2
  end_program
  else
    puts "入力された値は、無効な値です"
  end
end
