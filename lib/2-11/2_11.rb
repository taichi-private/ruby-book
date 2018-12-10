# デフォルト引数について
def greeting(country = 'japan')
  if country == 'japan'
    'こんにちわ'
  else
    'hello'
  end
end

def deafault_args(a, b, c=0, d=0)
  "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end

def foo(time = Time.now, message = bar)
  "time=#{time}, message=#{message}"
end

def bar
  'BAR'
end

def maltiple_of_three?(n)
  n % 3 == 0
end

puts '-------- デフォルト引数について --------'
puts greeting
puts greeting('america')
puts deafault_args(1,2)
puts deafault_args(1,2,3)
puts deafault_args(1,2,3,4)
puts foo
puts foo('12/1', 'testです')


# ?で終わるメソッド
puts '---------- ?で終わるメソッド ------------'
# 空文字だったらtrue
puts ''.empty?
puts 'abc'.empty?
# 引数の文字列が含まれていればtrue
puts 'watch'.include?('at')
puts 'watch'.include?('in')
# 奇数ならtrue,偶数ならfalse
puts 1.odd?
puts 2.odd?
# 偶数ならtrue,奇数ならfalse
puts 1.even?
puts 2.even?
# オブジェクトがnilだったらtrue
puts nil.nil?
puts 'a'.nil?
puts 1.nil?
puts ''.nil?
# 3の倍数ならtrue
puts maltiple_of_three?(3)
puts maltiple_of_three?(1)


# !で終わるメソッド
# !で終わるメソッドは注意が必要。
# upcaseメソッドは大文字にしたあたらしいメソッドを返すが、
# upcase!メソッドは元の文字列まで大文字にしてしまう。
puts '---------- !で終わるメソッド ------------'
a = 'ruby'
puts a.upcase
puts a

b = 'ruby2'
puts b.upcase!
puts b