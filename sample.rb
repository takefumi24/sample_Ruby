# 任意の2つの文字列があります。大文字と小文字の違いを無視して、
# どちらかの文字がもう一方の文字の最後にある場合はTrueを
# ない場合はFalseを出力するプログラムを作りましょう。
# （つまり、大文字と小文字は区別されません）。

# def end_other(a,b)

#  a_count = a.length
#  b_count = b.length

#   if a_count <= b_count
#     check = b[-(a_count),b_count]
#     p check.casecmp?(a)
#   else
#     check = a[-(b_count),b_count]
#     p check.casecmp?(b)
#   end
# end

def end_other(a, b)
  a = a.downcase.reverse
  b = b.downcase.reverse
  puts a.slice(0..b.length - 1)
  puts b
  if a.slice(0..b.length - 1) == b || b.slice(0..a.length - 1) == a
    puts "True"
  else
    puts "False"
  end
end
end_other('abcaaaa', 'abXabc')
end_other('Hiabc', 'abc')
end_other('AbC', 'HiaBc')
end_other('abc', 'abXabc')


def end_other(a,b)
  a_down = a.downcase
  b_down = b.downcase
  a_len = a_down.length
  b_len = b_down.length
  if  b_down.slice!(-(a_len)..b_len - 1) == a_down || a_down.slice!(-(b_len)..a_len - 1) == b_down
    puts "True"
  else
    puts "False"
  end
end
