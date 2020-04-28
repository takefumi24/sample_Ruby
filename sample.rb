def register_data(datas)
  puts "名前を入力してください"
  name=gets.chomp
  puts "パンチ力を入力してください(0 ~ 100)"
  punch=power(gets.chomp.to_i)
  puts "キック力を入力してください(0 ~ 100)"
  kick=power(gets.chomp.to_i)
  puts "ジャンプ力を入力してください(0 ~ 100)"
  jump=power(gets.chomp.to_i)

  data={name:name,punch:punch,kick:kick,jump:jump,rank:hero_rank(punch,kick,jump)}
  datas<<data
end


def power(power)
  while power>100
  # 入力された数字が0~100になるまで繰り返し入力させる。
    puts "100以下の数字を入力してください"
      power=gets.to_i
  end
  return power
end


def hero_rank(punch, kick, jump)
  power=punch + kick + jump
  # ヒーロランクの判定をする。
  if power==300
    rank="A"
  elsif 100<=power && power<300
    rank="B"
  elsif 20<=power && power<100
    rank="C"
  else
    rank="D"
  end
end


def show_data_list(datas)

   puts "見たい番号を入力してください"
  # 保存されたデータの一覧を出力する。
  datas.each_with_index do |data,index|
    puts "#{index + 1}:#{data[:name]}"
  end
  # 選択されたデータの詳細な情報（名前、パンチ力、キック力、ジャンプ力、ヒーロランク）を出力する。
  input=gets.chomp.to_i - 1
  data=datas[input]
  puts "名前:#{data[:name]}"
  puts "パンチ力:#{data[:punch]}"
  puts "キック力:#{data[:kick]}"
  puts "ジャンプ力:#{data[:jump]}"
  puts "ヒーローランク:#{data[:rank]}"

end

datas=[]
while true
  puts '選択してください'
  puts '[0]登録する'
  puts '[1]データを確認する'
  puts '[2]終了する'
  input = gets.to_i

  if input == 0
    # データの登録を行う。
    register_data(datas)
  elsif input == 1
    # 保存されたデータの一覧を表示する。
    show_data_list(datas)
  elsif input == 2
    exit
  else
    puts '無効な値です'
  end
end
