#!/usr/bin/env ruby

1.upto(100) do |num|
  if (num % 3).zero? && (num % 5).zero?
    puts "#{num}: FizzBuzz"
  elsif (num % 3).zero?
    puts "#{num}: Fizz"
  elsif (num % 5).zero?
    puts "#{num}: Buzz"
  else
    puts num
  end
end
