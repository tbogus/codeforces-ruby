#!usr/bin/env ruby

# https://codeforces.com/problemset/problem/705/A

n = gets.to_i

answer = "I hate "

(n-1).times do |i|
  feeling = i % 2 == 0 ? "love" : "hate"
  answer << "that I #{feeling} "
end

answer << "it"

puts answer
