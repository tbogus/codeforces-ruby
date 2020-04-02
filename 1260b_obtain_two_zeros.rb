#!usr/bin/env ruby

# https://codeforces.com/problemset/problem/1260/B

n = gets.to_i

n.times do
 input = gets.split(' ').map(&:to_i)
 a = input.max
 b = input.min

 if b < a/2.0 
  puts "NO"  
 elsif (a % 3 + b % 3) % 3 == 0
  puts "YES"
 else
  puts "NO"
 end
end