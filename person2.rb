# frozen_string_literal: true

# Greet class
class Greet
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greet
    puts 'Hello, world!'
  end
end

# Person class
class Person < Greet
  def greet
    puts "Hello, I'm #{name}"
  end
end

Person.new('taro').greet
