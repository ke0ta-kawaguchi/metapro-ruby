# frozen_string_literal: true

class Animal
  def greet
    puts "#{name} says hello!"
  end
end

class Cat < Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  # def greet
  #   puts "#{name} says hello!"
  # end
end

Cat.new('cat').greet
