# 数値numが1以上10以下の範囲であればTrueを出力します。
# outside_modeがTrueであった場合は数値が0以下、または11以上であってもTrueを出力します。
# それ以外はFalseを出力するメソッドを作りましょう。
def in1to10(int,outside_mode)
 if int >=1 && int <= 10 || outside_mode == true
  puts "True"
 else
  puts "False"
 end
end


in1to10(5,false)
in1to10(11,false)
in1to10(11,true)


# 解答
def in1to10(num,outside_mode)
  if (num >= 1 && num <= 10) || outside_mode
    puts "True"
  else
    puts "False"
  end
end
