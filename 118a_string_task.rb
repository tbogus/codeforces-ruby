#!/usr/bin/env ruby

word = gets.downcase.chomp
answer = ""

word.split('').each do |c|
  answer << "." + c unless %w(a e i o u y).include? c
end

puts answer
