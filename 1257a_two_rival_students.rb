#!/usr/bin/env ruby
count = gets.chomp.to_i
answers = []
count.times do
  input = gets.chomp.split(' ').map(&:to_i)
  n = input[0]
  x = input[1]
  a = input[2]
  b = input[3]

  distance_after_swaps = (a-b).abs + x
  
  answers << if distance_after_swaps > n - 1
               n-1
             else
               distance_after_swaps
             end
end

answers.each { |answer| puts answer }
