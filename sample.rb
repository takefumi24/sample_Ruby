# 1,2,3が全て配列内に入っていれば「True」それ以外は「False」と
# 出力されるメソッドを作りなさい。



def array123(nums)
  if nums.any? {|n| n == 1 && n == 2 && n == 3  }
    p "True"
  else
    p "Flase"
  end
end
array123([1, 1, 2, 3, 1])

解答
def array123(nums)
  if (nums.include?(1) && nums.include?(2) && nums.include?(3))
    puts "True"
  else
    puts "False"
  end
end

array123([1, 1, 2, 3, 1])
