hello = "こんにちわ"
name = '山田太郎'
sample_text = <<TEXT
こんにちわ。ここはヒアドキュメントです。
このように複数行に渡る文字列を
作成するのに便利です。
TEXT

sample_text2 = <<TEXT
こんにちわ。#{name}さん
ヒアドキュメント内では式展開ができます。
TEXT

sample_text3 = <<'TEXT'
こんにちわ。#{name}さん
シングルクオートを識別子につけると式展開ができなくなります。
ただし、"TEXT"のようにダブルクオートだと式展開ができます。
TEXT

sample_html = <<HTML
<div>
  <p>ここはhtmlです</p>
</div>
HTML


def sample_method
  <<-TEXT
  <<-を使うと最後の識別子(ここで言う下のTEXT)のインデントをずらすことができます。
  メソッド内部でヒアドキュメントを使用するときに便利です。
  TEXT
end

def sample_method2
  <<~TEXT
        <<~を使用するとヒアドキュメント内で
        インデントしても先頭の空白が無視されます。
  TEXT
end


a = 'ruby'
a.prepend(<<TEXT) #prependは渡された文字列の先頭に追加するメソッド
java
php
TEXT

b = <<TEXT.upcase
hello,
good
TEXT


puts 'abc'.class
puts 1.class
puts %q!hello, "これは大変だ"! #%q!!はシングルクオートで囲んだことと同義
puts %Q!今日はいい天気だ、#{hello}! #%Q!!はダブルクオートで囲んだことと同義
puts %!#{hello}, 元気？! #%Q!!はダブルクオートで囲んだことと同義
puts %{#{hello}, 元気？} #任意の記号も区切り文字として使える
puts %?#{hello}, 元気？? #任意の記号も区切り文字として使える

puts "aaaa,
aaa" #文字列は改行も入れられる
puts sample_text #ヒアドキュメントではTEXTと識別子を使用しているが記述する文字列の中に入らないものであれば自由に設定できる。
puts sample_method
puts sample_method2
puts sample_text2
puts sample_text3
puts a
puts b #upcaseメソッドは小文字を大文字にするメソッド
puts sprintf('%0.3f', 1.2)  #小数点第3位まで数字を表示する文字列を作成する(以下のように省略して書くことも可)
puts '%0.3f' % 1.2
puts sprintf('%0.3f + %0.3f', 1.2, 0.48) #このように複数渡すこともできる
puts '%0.3f + %0.3f' % [1.2, 0.48]