def decryption(char)
  # char_ary = "frqjudwxodwlrq"
  changed_char_ary = []#空の配列を用意する
  char.chars.each do |char|
    changed_char_ary << (char.ord - 3).chr
     #ordメソッドで整数にしchrメソッドで文字に変換する
      #空の配列に入れる
  end
  puts changed_char_ary.join
     # =>edjdhoa
     #joinメソッドで配列を連結して文字列にする
end


char= "frqjudwxodwlrq"
decryption(char)
