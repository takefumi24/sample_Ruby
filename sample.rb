def squared(num)
  num ** 2
end

puts "一辺の長さを入力してください"

side_length = gets.to_i
puts "１辺の長さが#{side_length}cmの正方形の面積は#{squared(side_length)}㎠です"
