# ユーザーに数字を入力してもらい、その数の回数だけHello!と表示させるコードを記述してください。

puts "数字を入力して下さい"
input = gets.chomp.to_i
input.times {|num| puts "Hello"}

# 解答
def output(num)
  num.times{ puts "Hello!" }
end

puts "何回表示させますか？"
num = gets.to_i
output(num)
