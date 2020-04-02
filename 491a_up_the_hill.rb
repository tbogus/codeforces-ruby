#!usr/bin/env ruby 

# https://codeforces.com/problemset/problem/491/A

up = gets.to_i
i = down = gets.to_i

max = up + down + 1

answer = ""

answer << "#{current = max - up} "

while i != 0 do
  answer << "#{current -= 1} "
  i -= 1
end

current += down

while up != 0 do
  answer << "#{current += 1} "
  up -= 1
end

puts answer

