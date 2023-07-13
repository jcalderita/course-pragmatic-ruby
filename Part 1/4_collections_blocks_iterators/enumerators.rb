# a = [1, 3, "cat"]
# enum_a = a.to_enum
# puts enum_a.next
# puts enum_a.next

# h = {
#   dog: "canine",
#   fox: "vulpine"
# }
# enum_h = h.to_enum
# p enum_h.next
# p enum_h.next

# enum_a = a.to_enum(:reverse_each)
# puts enum_a.next
# puts enum_a.next

# short_enum = (1..3).to_enum
# long_enum = ("a".."z").to_enum
# loop do
#   puts "#{short_enum.next} - #{long_enum.next}"
# end

# result = []
# ["a", "b", "c"].each_with_index { |item, index| result << [item, index] }
# "cat".each_char.each_with_index { |item, index| result << [item, index] }
# "cat".each_char.with_index { |item, index| result << [item, index] }
# "cat".each_char.with_index.ma { |item, index| [item, index] }
# p result

# enum_in_threes = (1..10).enum_for(:each_slice, 3)
# p enum_in_threes.to_a

# triangular_numbers = Enumerator.new do |yielder|
#   number = 0
#   count = 1
#   loop do
#     number += count
#     count += 1
#     yielder.yield(number)
#   end
# end

# triangular_numbers = Enumerator.produce([1, 2]) do |number, count|
#   [number + count, count + 1]
# end

# 5.times { print triangular_numbers.next.first, " " }
# p triangular_numbers.first(5).map { _1.first }

# class InfiniteStream
#   def all
#     Enumerator.produce(0) do |number|
#       number += 1
#     end.lazy
#   end
# end

# p InfiniteStream.new.all.first(10)
# p InfiniteStream.new.all
#   .select { (_1 % 3).zero? }
#   .first(10)
# def palindrome?(n)
#   n = n.to_s
#   n == n.reverse
# end

# p InfiniteStream.new.all
#   .select { (_1 % 3).zero? }
#   .select { palindrome?(_1) }
#   .first(10)

# multiple_of_three = ->(n) { (n % 3).zero? }
# palindrome = ->(n) {
#   n = n.to_s
#   n == n.reverse
# }

# p InfiniteStream.new.all
#   .select(&multiple_of_three)
#   .select(&palindrome)
#   .first(10)

triangular_numbers = Enumerator.produce([1, 2]) do |number, count|
  [number + count, count + 1]
end.lazy.map { _1.first }

p triangular_numbers.first(5)
