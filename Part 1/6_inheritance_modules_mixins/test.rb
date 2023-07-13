# class Parent
#   def say_hello
#     puts "Hello from #{self}"
#   end
# end

# p = Parent.new
# p.say_hello

# class Child < Parent
# end

# c = Child.new
# c.say_hello

# class Person
#   def initialize(name)
#     @name = name
#   end

#   def to_s
#     "Person named #{@name}"
#   end
# end

# p = Person.new("Michael")
# puts p

# class Person
#   include Comparable
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def to_s
#     @name.to_s
#   end

#   def <=>(other)
#     name <=> other.name
#   end
# end

# p1 = Person.new("Matz")
# p2 = Person.new("Guido")
# p3 = Person.new("larry")

# if p1 > p2
#   puts "#{p1.name}'s name > #{p2.name}'s name"
# end

# puts "Sorted list"
# puts [p1, p2, p3].sort

# module ExtendedNew
#   def new_from_string(string, delimiter = ",")
#     new(*string.split(delimiter))
#   end
# end

# class Person
#   extend ExtendedNew

#   def initialize(first_name, last_name)
#     @first_name = first_name
#     @last_name = last_name
#   end

#   def full_name = "#{@first_name} #{@last_name}"
# end

# superman = Person.new_from_string("Clark,Kent")
# batman = Person.new_from_string("Bruce|Wayne", "|")
# puts superman.full_name
# puts batman.full_name

module Log
  def execute
    puts "logging"
    super
  end
end

module Caller
  def execute
    puts "calling"
    super
  end
end

class Parent
  def execute
    puts "parenting"
  end
end

class Child < Parent
  prepend Log
  include Caller

  def execute
    puts "childing"
    super
  end
end

puts Child.new.execute
