num = 3
x = if num > 2
      num
    else
      0
    end

puts x

num_a = [30]
num_a.each do |i|
  x = i
end

puts x

def display_num
  def func1
    x = 300
  end
end

func2 = display_num
puts func2.class
puts func2
# puts x
