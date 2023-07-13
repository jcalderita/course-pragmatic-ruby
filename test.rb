# def say_hello_goodby(name)
#   "Hi #{name} Bye!"
# end
# puts say_hello_goodby("Jorge")

# a = [1, "cat", 3.14]
# puts "The first element is #{a[0]}"
# a[2] = nil
# puts a.inspect

# instrument_section = {
#   cello: "string",
#   clarinet: "woodwind",
#   drumb: "percussion",
#   oboe: "woodwind",
#   trumpet: "brass",
#   violin: "string"
# }
# p instrument_section[:oboe]
# p instrument_section["cello"]

# histogram = Hash.new(0)
# histogram[:ruby]
# histogram[:ruby] = histogram[:ruby] + 1
# p histogram[:ruby]

# today = Time.now

# if today.saturday?
#   puts "Yes"
# end
# puts "Yes" if today.saturday?

# def who_says_what
#   yield("Dave", "hello")
#   yield("Andy", "goodbye")
# end

# who_says_what { |person, phrase| puts "#{person} says #{phrase}" }

# 3.upto(6) { |i| print i }

# line = gets
# print line

# class Account
#   protected attr_accessor :balance
#   def initialize(balance)
#     @balance = balance
#   end

#   def greater_balance_than?(other)
#     @balance > other.balance
#   end
# end

# class Account
#   attr_accessor :balance
#   def initialize(balance)
#     @balance = balance
#   end

#   def greater_balance_than?(other)
#     @balance > other.balance
#   end
# end

# class Transaction
#   def initialize(account_a, account_b)
#     @account_a = account_a
#     @account_b = account_b
#   end

#   def tranfer(amount)
#     debit(@account_a, amount)
#     credit(@account_b, amount)
#   end

#   private def debit(account, amount)
#     account.balance -= amount
#   end

#   private def credit(account, amount)
#     account.balance += amount
#   end
# end

# savings = Account.new(100)
# checking = Account.new(200)

# transaction = Transaction.new(checking, savings)
# transaction.tranfer(50)
# # puts savings.balance
# # puts checking.balance
# puts savings.greater_balance_than?(checking)

# class Book
#   attr_accessor :title
# end

# class Book
#   def uppercase_title
#     title.upcase
#   end
# end

# a = %w[ant bee cat dog elk]
# p a

# b = %i[ant bee cat dog elk]
# p b

# h = {
#   dog: "canine",
#   cat: "feline",
#   bear: "ursine"
# }
# p h

# firstname = "Jorge"
# lastname = "Calderita"

# user = {firstname:, lastname:}
# puts user

# class ProcExample
#   def pass_in_block(&action)
#     @stored_proc = action
#   end

#   def use_proc(parameter)
#     @stored_proc.call(parameter)
#   end
# end

# eg = ProcExample.new
# eg.pass_in_block { |param| puts "The parameter is #{param}" }
# eg.use_proc(99)

# def pepe(param)
#   hola = 2
#   puts param, hola
# end

# def create_block_object(&block)
#   block
# end

# bo = create_block_object { |param| puts "You called me with #{param}" }

# bo.call(99)
# bo.call("cat")

bo = ->(param) { puts "You called me with #{param}" }
bo.call(99)
bo.call("cat")

be = lambda { |param| puts "You called me with #{param}" }
be.call(99)
