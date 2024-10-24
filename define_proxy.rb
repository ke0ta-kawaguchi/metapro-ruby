# frozen_string_literal: true

# Greet class
class Greet
  def greet_by_ja
    puts 'こんにちは、世界！'
  end

  def greet_by_en
    puts 'Hello, world!'
  end
end

# DefineProxy class
class DefineProxy
  def method_missing(name, *args, &block)
    subject.send(name, *args, &block)
  end

  def respond_to_missing?(name, include_private = false)
    subject.respond_to?(name, include_private) || super
  end

  private

  def subject
    @subject ||= Greet.new
  end
end

DefineProxy.new.greet_by_ja
DefineProxy.new.greet_by_en
puts DefineProxy.new.respond_to?(:greet_by_ja)
