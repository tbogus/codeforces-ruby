#!/usr/bin/env ruby
input = gets.to_i

answers = []

input.times do
  word = gets.chomp
  len = word.length
  answers << if len > 10
               word[0] + (word.length - 2).to_s + word[-1]
             else
               word
             end
end

answers.each do |word|
  puts word
end
