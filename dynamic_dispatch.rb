# frozen_string_literal: true

# Book class
class Book
  attr_accessor :title, :author, :publisher

  def refresh(options = {})
    defaults = {}
    attributes = %i[title author publisher]

    attributes.each do |attribute|
      defaults[attribute] = ''
    end

    defaults.merge!(options).each do |key, value|
      send("#{key}=", value) if respond_to?("#{key}=")
    end

    true
  end
end

book = Book.new
book.refresh(title: 'Ruby Book')
puts book.title
