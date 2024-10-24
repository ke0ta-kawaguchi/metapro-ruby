# frozen_string_literal: true

def yield_sample
  a = 'dog'
  yield('bird') if block_given?
end

a = 'cat'
puts(yield_sample { |b| "#{a}, #{b}" })
