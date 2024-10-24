# frozen_string_literal: true

# Printable module
module Printable
  def print
    puts 'printable print'
  end
end

# Document module
module Document
  def print_to_screen
    print
  end

  def print
    puts 'document print'
  end
end

class Book
  include Document
  include Printable
end

# Book.new.print_to_screen
Book.new.send(:print_to_screen)
