# frozen_string_literal: true

# MethodMissing class
class MethodMissing
  def method_missing(name, *args)
    puts "Called: #{name}(#{args.join(', ')})"
    puts 'Block given' if block_given?
  end
end

MethodMissing.new.method_missing(:method_missing, :greet)
MethodMissing.new.method_missing(:method_missing, :greet, :title) { 'Hello, world!' }
