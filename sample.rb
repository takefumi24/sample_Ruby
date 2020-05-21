# 下記のように直前の2つの数字を足したものを次の数字とする数列がある場合、
# 20項目目の数字は何になるか求めてください。

# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, …

def fibonacci(n)
  if n == 1 || n == 2
    return 1
  else
    return fibonacci(n-1) + fibonacci(n-2)
  end
end
puts fibonacci(20)
