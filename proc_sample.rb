# frozen_string_literal: true

def math(a, b)
  yield(a, b)
end

def do_math(a, b, &block)
  math(a, b, &block)
end

puts do_math(2, 3) { |x, y| x * y }
