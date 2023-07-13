# class Batman
#   def who_is_robin
#     puts "Dick Grayson"
#   end

#   def who_is_robin
#     puts "Damian Wayne"
#   end
# end

# puts Batman.new.who_is_robin

# def a_method_name(arg) = puts arg

# class Matrix
#   attr_reader :x, :y

#   def initialize(x, y)
#     @x = x
#     @y = y
#   end

#   def to_s = "(#{x}, #{y})"

#   def +(other)
#     Matrix.new(x + other.x, y + other.y)
#   end
# end

# first = Matrix.new(1, 2)
# second = Matrix.new(3, 4)
# puts first + second

# class Computer
#   def self.function
#     "I'm afraid I can't do that"
#   end
# end
# puts Computer.function

# def double(p1)
#   yield(p1 * 2)
# end

# puts double(3) { |val| "I got #{val}" }

# class TaxCalculator
#   def initialize(name, &block)
#     @name, @block = name, block
#   end

#   def get_tax(amount)
#     "#{@name} of #{amount} = #{@block.call(amount)}"
#   end
# end

# tc = TaxCalculator.new("Sales tax") { |amt| amt * 0.075 }
# puts tc.get_tax(100)
# puts tc.get_tax(250)

# def five(a, b, c, d, e)
#   puts "I was passed #{a} #{b} #{c} #{d} #{e}"
# end

# five(1, 2, 3, "a", "b")
# five(1, 2, 3, *(4..5))

# def method_with_keywords(city:, state:, zip:)
#   puts "I live in #{city}, #{state}, #{zip}"
# end

# data = {city: "chicago", state: "IL", zip: "60606"}
# method_with_keywords(**data)

# p ["a", "b", "c"].map { |s| s.upcase }
# p ["a", "b", "c"].map(&:upcase)

print "(t)imes or (p)plus: "
operator = gets
print "number: "
number = Integer(gets)

method = number.method(operator.start_with?("t") ? :* : :+)
puts((1..10).map(&method).join(", "))

# calc = if operator.start_with?("t")
#   ->(n) { n * number }
# else
#   ->(n) { n + number }
# end

# puts((1..10).map(&calc).join(", "))
