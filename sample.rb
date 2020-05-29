# 3つの整数a b cが与えられた場合、bまたはcがaとの差が１でかつbとｃとの数値の差が2以上の場合はTrue。
# それ以外はFalseと出力するメソッドを作りましょう。

def close_far(a, b, c)
  if ((b - a).abs == 1 || (c - a).abs == 1) && (b - c).abs >= 2
    puts "True"
  else
    puts "False"
  end
end

close_far(1, 2, 10)
close_far(1, 2, 3)
close_far(4, 1, 3)


# 別解
def close_far(a,b,c)
  x = (a-b).abs
  y = (a-c).abs
  z = (b-c).abs

  if ((x == 1 || y == 1) && z >= 2)
    puts "True"
  else
    puts "False"
  end
end

close_far(1, 2, 10)
close_far(1, 2, 3)
close_far(4, 1, 3)





# 解答
def close_far(a,b,c)
  x = (a-b).abs
  y = (a-c).abs
  z = (b-c).abs

  if (x == 1 && z >= 2)
    puts "True"
  elsif ( y == 1 && z >= 2)
    puts "True"
  else
    puts "False"
  end
end
