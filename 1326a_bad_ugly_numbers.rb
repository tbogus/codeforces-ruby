#!usr/bin/env ruby

# https://codeforces.com/problemset/problem/1326/A

n = gets.to_i

n.times do
  a = gets.to_i

  if a == 1
    puts '-1'
  else
    puts ('9' * (a - 1) + '8')
  end
end
