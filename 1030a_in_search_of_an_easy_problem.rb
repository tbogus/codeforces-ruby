#!usr/bin/env ruby

# https://codeforces.com/problemset/problem/1030/A

gets.to_i

responses = gets.chomp

puts responses.include?("1") ? "HARD" : "EASY"
