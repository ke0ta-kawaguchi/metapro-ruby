# frozen_string_literal: true

# def block_sample(a, b)
#   a + yield(a, b)
# end

# puts block_sample(1, 2) { |x, y| (x + y) * 3 }

def block_sample
  return yield if block_given?

  puts 'good afternoon'
end

puts(block_sample { puts 'good morning' })
puts(block_sample)
