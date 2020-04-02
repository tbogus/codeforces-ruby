#!usr/bin/env ruby

# https://codeforces.com/problemset/problem/1223/A

count = gets.to_i
answers = []

count.times do
  match_count = gets.to_i
  answers << if match_count == 2
               2
             else
                match_count % 2
             end
end

answers.each { |answer| puts answer }
