# 任意の文字列にcatとdogの文字が2つで１組ならTrue、それ以外だとFalseを出力するメソッドを作りましょう。
def cat_dog(str)
  puts str.include?("cat") && str.include?("dog") ? "True": "False"
end

cat_dog("catdog")
cat_dog("catcat")
cat_dog("1cat1cadodog")


# def cat_dog(str)
  if str.include?("cat") && str.include?("dog")
    puts "True"
  else
    puts "False"
  end
end
