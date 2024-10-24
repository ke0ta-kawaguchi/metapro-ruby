# frozen_string_literal: true

# Greet class
module Greet
  def greet(text)
    puts "#{text} by #{name}"
    greet_myself
  end
end

# Person class
class Person
  include Greet

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greet_myself
    puts "Hello, I'm #{name}"
  end
end

Person.new('taro').greet('Hello, world!')
