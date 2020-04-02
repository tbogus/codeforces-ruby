# https://codeforces.com/problemset/problem/299/B

input = gets.split(' ').map(&:to_i)
road = gets.chomp

k = input[1]

if road.include? "#"*k
  puts "NO"
else
  puts "YES"
end
