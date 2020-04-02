#!usr/bin/env ruby

# https://codeforces.com/problemset/problem/1165/A

input = gets.split(' ').map(&:to_i)
num = gets.chomp

n = input[0]
x = input[1]
y = input[2]

counter = 0

(0..x-1).each do |i|
 if i == y
  counter += 1 if num[n-i-1] == '0'
 elsif num[n-i-1] == '1'
  counter += 1
 end
end

puts counter
