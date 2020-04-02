#!usr/bin/env ruby

# https://codeforces.com/problemset/problem/977/A

input = gets.split(' ').map(&:to_i)
number = input[0]
k = input[1]

k.times do
  if number % 10 == 0
    number /= 10
  else
    number -= 1
  end
end

puts number
