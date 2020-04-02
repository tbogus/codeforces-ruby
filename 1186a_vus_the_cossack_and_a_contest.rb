#!usr/bin/env ruby

# https://codeforces.com/problemset/problem/1186/A

input = gets.chomp.split(' ').map(&:to_i)

puts (input[0] <= input[1] && input[0] <= input[2]) ? "Yes" : "No"
