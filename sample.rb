# 対話型のインターフェイスで二桁以上の整数を入力すると、十の位と一の位の数字に対して、足す、掛けるを行い、最後にそれぞれの結果を足し合わせて出力するプログラムをrubyで作成してください。

def slice_num(inp)
  one, ten = inp.digits.take(2)
  return one, ten
end

puts "二桁の整数を入力してください"
inp = gets.chomp.to_i
ten, one = slice_num(inp)
puts "足し算結果と掛算結果の合計値は#{(one+ten)+(one*ten)}です"

# def addition(a, b)
  a + b
end

def multiplication(a,b)
  a * b
end

def slice_num(num)
  # 10の位
  tens_place = (num / 10) % 10
  # 1の位
  ones_place = (num / 1) % 10
  return tens_place, ones_place
end

puts "二桁の整数を入力してください"
input = gets.to_i
X, Y = slice_num(input)
add_result = addition(X, Y)
multiple_result = multiplication(X, Y)
puts "足し算結果と掛け算結果の合計値は#{add_result + multiple_result}です"
