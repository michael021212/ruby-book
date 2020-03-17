def fizz_buzz(n)
  if n % 3 == 0 && n % 5 == 0
    'Fizz Buzz'
  elsif n % 3 == 0
    'Fizz'
  elsif n % 5 == 0
    'Buzz'
  else
    n.to_s
  end
end

numbers = [1,2,3,4,5]

new_numbers = []
numbers.each {|n| new_numbers << n * 10}
puts new_numbers

new_numbers_2 = numbers.map {|n| n * 10}
puts new_numbers_2

numbers = [1,2,3,4,5,6]
# even_numbers = numbers.select{|n| n.even?}
even_numbers = numbers.select(&:even?)
puts even_numbers

def greeting(*names)
  puts "#{names.join('と')}、こんにちは！"
end

greeting('田中さん')
greeting('田中さん','山田さん')

fruits = ['apple','melon','orange']
fruits_group = fruits.each_with_index{|fruit,i| puts "#{i}: #{fruit}"}

class User
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def self.create_users(names)
    names.map do |name|
      User.new(name)
    end
  end

  def hello
    puts "Hello, I am #{@name}"
  end
end

names = %w[Alice Bob Carol]
users = User.create_users(names)
users.each do |user|
  puts user.hello
end

# user = User.new('Tom')
# user.hello
# puts user.name
# user.name = 'John'
# puts user.name

# def greeting(country = 'unknown')
#   country
# end

# puts greeting('japan')
# puts greeting


# def filename
#   puts __FILE__
# end

# def fizz_buzz_judge
#   if __FILE__ == 'lib/fizz_buzz.rb'
#     puts 'yes'
#   else
#     puts 'no'
#   end
# end

# filename
# fizz_buzz_judge

# require 'date'
# Date.today
