# 任意の文字列の最後の2文字を3回繰り返し
# 出力するメソッドを作りましょう。
# 出力例：
# extra_end('Hello') → 'lololo'
# extra_end('ab') → 'ababab'
# extra_end('Hi') → 'HiHiHi'

def extra_end(str)
  num = str[-2,2]
  puts num *3
end

extra_end("Hello")
extra_end('ab')

# 模範解答

def extra_end(str)
  char_num = str.length
  right2 = str.slice!(char_num - 2,2)
  puts right2*3
end
