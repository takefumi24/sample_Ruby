# 任意の文字列が "xyz"を含み、
# xyzの前にピリオド（.）が続かない場合はTrueを出力します。
# したがって、 "xxyz"はカウントされますが、 "x.xyz"はカウントされない
# メソッドを作りましょう。

def xyz_there(srt)
  if srt.include?(".xyz")
    puts "False"
  elsif srt.include?("xyz")
    puts "True"
  else
    puts "False"
  end
end

xyz_there('abcxyz')
xyz_there('abc.xyz')
xyz_there('xyz.abc')


# 解答
def xyz_there(str)
  if str.include?(".xyz")
    puts "False"
  elsif str.include?("xyz")
    puts "True"
  else
    puts "False"
  end
end
