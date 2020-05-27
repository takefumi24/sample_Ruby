# 警察がネズミ取りをしています。
# 速度が60以下の場合、出力は0になります。
# 速度が61以上80以下の場合、出力は1になります。
# 速度が81以上の場合、出力は2になります。
# 出力を計算するためのコードを作成し、
# int値としてエンコードします。
# 0=チケットなし、1 =小チケット、2 =大チケット。
# と出力するメソッドを作りましょう。
# アタナの誕生日の日だけ速度制限が5倍大きくなります。
# 速度は小数点以下も有効ですが、判定の際は小数点一桁で四捨五入して整数にしてください。

def caught_speeding(speed, is_birthday)
  if is_birthday == "True"
    bonus = 5
  else
    bonus = 1
  end

  if speed.to_i > 80 * bonus
    puts 2
  elsif speed.to_i > 60 * bonus && speed.to_i <= 80 * bonus
    puts 1
  else
    puts 0
  end
end

caught_speeding(60, "False")
caught_speeding(65, "False")
caught_speeding(65, "True")


# 解答
def caught_speeding(speed, is_birthday)
  speed_rounded = speed.round(1)

  if speed_rounded <= 60
    point = 0
  elsif speed_rounded <= 80
    point = 1
  else
    point = 2
  end
  puts is_birthday ? point * 5 : point
end
