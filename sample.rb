# 任意の文字列の最初の2文字を最後尾に持ってきて
# その文字を出力するメソッド


def left2(str)
 puts str.slice(2, str.length - 2) + str.slice(0, 2)
end


def left2(str)
  puts str[2..-1] + str[0, 2]
end

left2('Hello')
left2('java')
left2('Hi')
left2('Hihohhokkykky')

# 解答
# def left2(str)
#   puts str[2..-1] + str[0..1]
# end
