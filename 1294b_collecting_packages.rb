#!usr/bin/env ruby

# https://codeforces.com/contest/1294/problem/B

n = gets.to_i

n.times do
 size = gets.to_i
 pkgs = []
 size.times do
  pkgs << gets.split(' ').map(&:to_i)
 end

 pkgs.sort!

 x = y = 0
 failed = false
 answer = ""

 pkgs.each do |p|
  dx = p[0] - x
  dy = p[1] - y

  if dx < 0 || dy < 0
   failed = true
   break
  else
   answer += "R" * dx + "U" * dy
   x = p[0]
   y = p[1]
  end
 end

 if failed
  puts "NO"
 else
  puts "YES"
  puts answer
 end
end
