# frozen_string_literal: true

# global_var = '成功'

# class FlatScope
#   puts "クラス定義の中では#{global_var}"

#   def say_success
#     puts "メソッド定義の中でも#{global_var}"
#   end
# end

# puts FlatScope.new.say_success

global_var = '成功'

FlatScope = Class.new do
  puts "クラス定義の中では#{global_var}"

  define_method :say_success do
    "メソッド定義の中でも#{global_var}"
  end
end

puts FlatScope.new.say_success
