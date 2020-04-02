#!/usr/bin/env ruby
input = gets.to_i

answer = 0
input.times do
  inp = gets.split(' ').map(&:to_i).inject(0, :+)
  answer += 1 if inp >= 2
end

puts answer
