# frozen_string_literal: true

class Animal
  attr_reader :name

  def initialize
    @name = 'dog'
  end

  def change_name
    @name = 'cat'
  end
end

animal = Animal.new
puts animal.name
animal.change_name
puts animal.name
