# frozen_string_literal: true

class Sample
  def initialize
    @v = 1
  end
end

obj = Sample.new
obj.instance_eval do
  puts self
  puts @v
end

obj.instance_eval { @v = 2 }
obj.instance_eval { puts @v }
