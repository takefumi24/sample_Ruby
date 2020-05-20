# 例） 1, 2, Fizz, 4, Buzz, Fizz ,,,,

# このFizzBuzzを再現できるメソッドを作成してください。
# ただし、いくつまでカウントするか、引数で指定できるものとします。
def Fizz(num)
  i = 1
  for i in i..num do
    if i % 3 == 0 && i % 5 == 0
      puts "FizzBuzz"
    elsif i % 5 == 0
      puts "Buzz"
    elsif i % 3 == 0
      puts "Fizz"
    else
      puts i
    end
  end
end

Fizz(10)


def fizzbuzz(max_num)

  (1..max_num).each do |num|
    if num % 15 == 0
      puts "FizzBuzz"
    elsif num % 5 == 0
      puts "Buzz"
    elsif num % 3 == 0
      puts "Fizz"
    else
      puts num
    end
  end
end

puts 'いくつまで数えますか？'
num = gets.to_i
fizzbuzz(num)
