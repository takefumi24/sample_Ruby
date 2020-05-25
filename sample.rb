# 正の整数を入力します。その整数が、10の倍数（10,20,30...）からの差が、2以内であるときはTrue
# それ以外はFalseと出力するメソッドを作りましょう。

def near_ten(num)
  if num % 10 <= 2 || num % 10 >= 8
    puts "#{num}はTrue"
  else
    puts "#{num}はFalse"
  end
end

puts "正の整数を入力してください。"
input = gets.chomp.to_i
puts near_ten(input)

# 解答
def near_ten(num)
  quotient = num % 10
  if quotient  <= 2 || quotient >= 8
    puts "True"
  else
    puts "False"
  end
end
