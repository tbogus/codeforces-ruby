#!usr/bin/env ruby

# https://codeforces.com/problemset/problem/1146/A

word = gets.chomp
word_len = word.size
a_count = word.count('a')

if word_len / 2 < a_count
  puts word_len
else
  puts 2 * a_count - 1
end
