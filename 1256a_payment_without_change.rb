#!/usr/bin/env ruby
count = gets.chomp.to_i
answers = []
count.times do
  input = gets.chomp.split(' ').map(&:to_i)
  a = input[0] # number of n coins
  b = input[1] # number of 1 coins
  n = input[2] # value of a coins
  sum = input[3] # wanted sum

  c = sum / n
  
  answers <<
    if (a <= c && a * n + b >= sum) || (a > c && c * n + b >= sum)
      "YES"
    else
      "NO"
    end
end

answers.each { |answer| puts answer }
