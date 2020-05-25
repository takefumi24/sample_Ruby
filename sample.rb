# 以下のハッシュから値だけを取り出し、配列にしてください。ただし、hashクラスのvaluesメソッドは利用しないこととします。

attr = {name: "田中", age: 27, height: 180, weight: 75}
values = attr.map(&:last)

puts values

# 解答
values = []
attr.each do |key, value|
  values << value
end
