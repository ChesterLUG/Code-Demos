#!/usr/bin/env ruby
#
# Run this with: `ruby -r ./music.rb`
#


puts "\nCreating the Person class..."
class Person
  attr_reader :name, :age
  attr_writer :name, :age

  def initialize(initial_name = nil, initial_age = nil)
    @name = initial_name
    @age = initial_age
  end

  def say_hello
    puts "Hello"
  end
end

puts "\nCreating the fred and john instances of Person..."
fred = Person.new("fred"); puts fred.inspect
john = Person.new("john"); puts john.inspect

puts "\nCan fred say_hello ?"
puts fred.methods.include?(:say_hello)

puts "\nCan Person say_hello ?"
puts Person.methods.include?(:say_hello)

puts "\nWhat's john.age ?"
puts john.age.inspect

puts "\nBugger. Let's try again with a 20-yr-old joe..."
joe = Person.new("joe", 20); puts joe.inspect
puts joe.age

puts "\nAll you're doing is asking joe what his age is. You're sending joe a message, asking him to give you his age:"
puts joe.send(:age).inspect

people = []
people << fred
people << john
people << joe

puts "The people in the Array are:"
people.each do |p|
  puts p.name
end
