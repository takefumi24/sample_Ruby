# 任意の文字に対してn番目の文字を消し、
# その消した文字を出力するメソッドを作りましょう。
# 呼び出し方
# missing_char(string, num)

# 出力例：
# missing_char('kitten', 1) → 'itten'
# missing_char('kitten', 2) → 'ktten'
# missing_char('kitten', 4) → 'kittn'

def missing_char(array, n)
  array.slice!(n)
  puts array
end
puts missing_char('kitten', 2)
