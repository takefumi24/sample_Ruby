# 任意の文字列で"hi"がいくつあるか数えてその数を出力するメソッドを作りましょう。

def count_hi(str)
  puts str.scan("hi").length
end

count_hi('abc hi ho')
count_hi('ABChi hi')
count_hi('hihi')


# 解答
def count_hi(str)
  puts str.scan("hi").length
end
