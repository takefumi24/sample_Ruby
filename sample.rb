# 三項演算子とはどのようなものか説明してください。
# 条件分岐文を1行にまとめて書いたもの

# 以下の記述を、三項演算子を用いて書き換えてください。
var = "文字列"

# if var.class == String
#   "varはStringです"
# else
#   "varはStringではありません"
# end

puts var.class == String ? "varはStringです": "varはStringではありません"



# 解答
1
条件分岐を行うための演算子。
条件式 ? 真の時の値 : 偽の時の値
条件式を判定し、trueだった時は「真の時の値」を、falseだった時は「偽の時の値」を返す。条件や返り値がシンプルな場合、if分よりも簡潔に記述できる。

2.
var = "文字列"
var.class == String ? "varはstringです" : "varはstringではありません"
