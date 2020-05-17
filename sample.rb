# あなたは警官です。aとｂ二人の容疑者の取り調べをしています。
# どちらも証言がTrue、またはFalseであればその証言はTrueです。
# しかしどちらかがFalseでTrueであればその証言はFalse、と出力するメソッドを作りましょう。
# 呼び出し方：
# police_trouble(a, b)

# 出力例：
# police_trouble(true, false) → False
# police_trouble(false, false) → True
# police_trouble(true, true) → True


def police_trouble(a,b)
  if(a==b)
    puts "True"
  else
   puts "False"
  end
end

puts police_trouble(true,false)
puts police_trouble(false,false)
puts police_trouble(true,true)


# 模範回答
def police_trouble(a, b)

  if a && b || !a && !b
    puts "True"
  else
    puts "False"
  end

end
