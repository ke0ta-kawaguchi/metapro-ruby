# frozen_string_literal: true

def do_method(&block)
  block
end

p = do_method { |name| puts "hello, #{name}" }
puts p.class
p.call('Bill')
