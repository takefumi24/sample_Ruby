puts "ジャンルを入力してください:"
genre=gets.chomp
puts "タイトルを入力してください:"
title= gets.chomp
puts "感想を入力してください:"
review=gets.chomp
dot_line="---------------------------"

puts "ジャンル : #{genre}\n#{dot_line}"
puts "タイトル : #{title}\n#{dot_line}"
puts "感想 : \n#{review}\n#{dot_line}"
