post = {}
puts "ジャンルを入力してください："
post[:genre] = gets.chomp
puts "タイトルを入力してください："
post[:title] = gets.chomp
puts "感想を入力してください："
post[:review] = gets.chomp
line = "---------------------------"

# レビューの描画
puts "ジャンル : #{post[:genre]}\n#{line}"
puts "タイトル : #{post[:title]}\n#{line}"
puts "感想 :\n#{post[:review]}\n#{line}"
