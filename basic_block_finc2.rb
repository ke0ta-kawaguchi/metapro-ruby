# frozen_string_literal: true

def yield_sample
  puts 'これは必ず表示したい'
  yield if block_given?
end

puts(yield_sample { puts 'good morning' })
puts(yield_sample)
