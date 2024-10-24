# frozen_string_literal: true

# DefineMethod class
class DefineMethod
  define_method :greet do |text|
    puts text
  end
end

DefineMethod.new.greet('Hello, world!')
