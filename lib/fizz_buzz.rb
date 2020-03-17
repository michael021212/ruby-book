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

puts fizz_buzz(1)
puts fizz_buzz(2)
puts fizz_buzz(3)
puts fizz_buzz(4)
puts fizz_buzz(5)
puts fizz_buzz(6)
puts fizz_buzz(15)


def greeting(country = 'unknown')
  country
end

puts greeting('japan')
puts greeting


def filename
  puts __FILE__
end

def fizz_buzz_judge
  if __FILE__ == 'lib/fizz_buzz.rb'
    puts 'yes'
  else
    puts 'no'
  end
end

filename
fizz_buzz_judge
