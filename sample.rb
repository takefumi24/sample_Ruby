exam = {subject: "Math"}

# 条件式にキー「:score」の値を使うif文をつくってください
if exam[:score]
  puts "#{exam[:subject]}の結果は#{exam[:score]}点です"
elsif
  puts "#{exam[:subject]}の結果はわかりません"
end
