#!usr/bin/env ruby

# https://codeforces.com/problemset/problem/1220/A

gets

word = gets.chomp

z_count = 0
n_count = 0

word.each_char do |c|
  if c == 'z'
    z_count += 1 
  elsif c == 'n'
    n_count += 1
  end
end

puts ("1 " * n_count + "0 " * z_count).rstrip
