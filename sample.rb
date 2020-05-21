# 下記のコードは、ターミナルに「Mr.Tanaka」と表記されることを意図して
# 書いていますが、実際はそうなりません。

# その理由を、「スコープ」という用語を用いて説明してください。

#   def rename(name)
#     name = "Mr.#{name}"
#   end

#   name = "Tanaka"
#   rename(name)
#   puts name
⑴全ファイルに反映させたい内容を記載する。

⑵セキュリティ強化し、ストロングパラメーターが必要になる。
createとupdate自動に割り振れる

⑶require treeによって全てのファイルが読み込める。

# 模範解答
⑴デフォルトでは、全てのビューが読み込まれるときapplication.html.erbが読み込まれる。そのため、ヘッダーやフッターなど共通で表示させたい内容をここに記述する。

⑵
・form_withで自動でパスを選択してくれて、HTTPメソッドを指定する必要が無い
・コントローラから渡された、ActiveRecordを継承するモデルのインスタンスが利用できる
・form_withではinputタグは用いない　　

⑶
application.html.erbにstylesheet_link_tag 'application'という記述があるため、 app/assets/stylesheets/application.cssが読み込まれる。

application.cssにあるrequire tree .　という記述により、同じフォルダにあるcssファイル全てが読み込まれる。
