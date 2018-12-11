# 参照の概念を理解する
a = 'hello'
b = 'hello'
c = b

def m(d) # 引数として受け取ったdはこの下で代入されるcと同じオブジェクト
  d.object_id
end

puts '----- aとbは同じもじれつだがオブジェクトとしては別物 ----'
puts a.object_id
puts b.object_id
puts c.object_id # bとcはどちらも同じオブジェクト

puts m(c)

puts a.equal?(b) # equal?メソッドを使って同じオブジェクトか確認できる
puts b.equal?(c)

# 同じオブジェクトを参照している場合、オブジェクトの状態が変更されるとその変数が
# 各変数に影響する。

def m!(d) # 渡された文字列を大文字に変換する破壊的メソッド(大元も変わる)
  d.upcase!
end

# m!(c)を呼び出したことにより元の変数Cの値が小文字から大文字に変換されたためb,c共に大文字になってしまっている
puts m!(c)
puts b
puts c

# aは別オブジェクトなので問題ない
puts a

# 標準ライブラリ: https://docs.ruby-lang.org/ja/latest/library/index.html
# 組み込みライブラリ: stringクラスやintegerクラスなどもここになる https://docs.ruby-lang.org/ja/latest/library/_builtin.html
# 外部ライブラリ: gemなどの有志で開発者が作成しているもの

# 標準ライブラリやgemなどを利用するときはrequireで読み込む
# require ライブラリ名

# puts Date.today これだとDateは組み込みライブラリではないのでname errorになる。
require 'date'
puts Date.today

# 自分で作成したrubyプログラムを読み込む場合もrequireを使う。
# その場合、rubyを実行している相対パス、または絶対パスを指定。
# 例: require './sample.rb'
# 拡張子は省略可能なので.rbは省いても問題ない

# require './sample'
# sample.rbで修正
# require './sample'をやると上で一回読み込みが終わっているので修正分が反映されない。
# このような場合はloadをつかう。そうすると毎回無条件に指定したファイルを読み込む。
# ただしloadを使う場合は.rbを省略できない。

# require_relative
# requireは実行しているディレクトリがパスの起点になるが
# require_relativeはファイルが存在するディレクトリがパスの起点になる。
# foo/hello.rb
# bar/bye.rb
# がある場合foo/hello.rbからbar/bye.rbを読み込むときは
# require_relative '../bar/bye'とすればいい。