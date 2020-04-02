#!usr/bin/env ruby

# https://codeforces.com/problemset/problem/3/A

start = gets.chomp
finish = gets.chomp
x1 = start[0]
x2 = finish[0]

y1 = start[1]
y2 = finish[1]

count = 0
moves = []

while !(x1 == x2 && y1 == y2) do
 move = ""

 if x1 < x2
  move += "R"
  x1 = x1.next
 elsif x1 > x2
  move += "L"
  x1 = (x1.ord - 1).chr
 end

 if y1 < y2
  move += "U"
  y1 = y1.next
 elsif y1 > y2
  move += "D"
  y1 = (y1.ord - 1).chr
 end
 count += 1
 moves << move
 end

puts count
moves.each { |mv| puts mv }
