  def rename(name)
    name = "Mr.#{name}"
  end

  name = "Tanaka"
  rename(name)
  puts name

# 上記のコードは、ターミナルに「Mr.Tanaka」と表記されることを意図して
# 書いていますが、実際はそうなりません。

# その理由を、「スコープ」という用語を用いて説明してください。

# A,変数のスコープという概念があり、スコープ外の変数にはアクセスすることができない
#   Rubyの場合はメソッドの内側と外側ではスコープが違うという仕様になっている。
#   そのため「def」で定義されているnameという変数と、defの外側のnameは別物である。
#   よって、renameメソッドのなかのnameに代入しても、外側のnameに変更はない。




# コードを下記のように修正するとうまくいく理由を、「引数」「返り値」という用語を用いて説明してください。
  def rename(name)
    name = "Mr.#{name}"
  en.

  name = "Tanaka"
  name = rename(name)
  puts name

  # A,まず、nameに"Tanaka"が代入され、次にrenameメソッドが呼ばれる。
  # メソッドrename(name)の（name)に"Tanaka"が引数として渡され、"Mr.Tanaka"が新たにnameに代入され、
  # 返り値と渡される。その返り値を再度変数に代入することでメソッドでの処理結果を利用することができる。
