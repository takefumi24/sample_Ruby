# ⑴例えばPictweetで、Tweet.find(1)を実行するとidが1番のつぶやきを取得することができます。この時、Tweetクラスの中にfindメソッドを定義していないにも関わらずfindというメソッドを使用できる理由を述べてください。

# ⑵Railsにおけるアソシエーションとはどのような機能か、またMVCのどこに含まれる機能なのか簡潔に述べてください。

解答
⑴ActiveRecordで定義されているメソッドなので使用できる。

⑵アソシエーションとは、テーブル間のリレーションシップをモデルの上の関係として操作できるようにする仕組み。modelに記載する。

# 模範解答
# ⑴rails g model tweetのコマンドを実行するとTweetクラスが作成されるが、そのTweetクラスはActiveRecord::Baseを継承している。

# そのため、Tweetクラスのインスタンスに対して、ActiveRecord::Baseで定義されているメソッドを使用することができる。

# ⑵DBのテーブルとテーブルを紐づけることによって、関連するデータの読み書きを容易にするための機能。MVCの中のM（モデル）に含まれる。
