a = [1, "cat", 3.14] # array with three elements
puts "The first element is #{a[0]}"
# set the third element
a[2] = nil
puts "The array is now #{a.inspect}"

histogram = Hash.new(0)
puts histogram[:ruby]
histogram[:ruby] += 1
puts histogram[:ruby]
