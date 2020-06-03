def count_coxe(str)
  count = str.scan(/co[a-z]e/).size
  puts "#{count}回マッチしました"
end

count_coxe('aaacodebbb')
count_coxe('codexxcode')
count_coxe('cozexxcope')

# 解答
def count_code(str)
  puts str.scan(/co.e/).length
end
