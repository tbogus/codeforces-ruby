#!usr/bin/env ruby

# https://codeforces.com/problemset/problem/1154/A

numbers = gets.split(' ').map(&:to_i)

max = numbers.max
answer = []

numbers.each do |n|
  if (temp = max - n) != 0
    answer << temp
  end
end

puts answer.join(' ')
