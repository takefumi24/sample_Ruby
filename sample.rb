foods = ['ピーマン', 'トマト', 'セロリ']
foods.each do |food|
  print "#{food}は好きですか?"
  answer = ['はい','いいえ'].sample
  puts answer

  # 質問に対して「はい」と答えない限り無限ループ
  redo unless answer == 'はい'
end
