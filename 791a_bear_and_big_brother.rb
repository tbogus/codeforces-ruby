# https://codeforces.com/problemset/problem/791/A

weights = gets.split(' ').map(&:to_i)

limak = weights[0]
bob = weights[1]

year_counter = 0

while limak <= bob
  year_counter += 1
  limak *= 3
  bob *= 2
end

puts year_counter
