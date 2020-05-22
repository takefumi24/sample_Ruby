# 任意の文字列の最初の2文字のみ出力するメソッドを作りましょう。
# 文字列が2文字以下だと文字列をそのまま返します。
# 出力例：
# 入力した最初の2文字のみ出す
# first_two('Hello') → 'He'
# first_two('abcdefg') → 'ab'
# first_two('ab') → 'ab'

def first_two(str)
  if str.length <=2
    puts str
  else
    puts str[0,2]
  end

end

first_two('strong')
