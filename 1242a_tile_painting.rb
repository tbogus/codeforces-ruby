# https://codeforces.com/problemset/problem/1242/A

require 'set'

n = gets.to_i

dividers = Set.new []

i = 2
size = n

while i * i <= n
  if n % i == 0
    dividers.add(i)
    n /= i
    i -= 1
  end
  i += 1
end

dividers.add(n) if n > 1 

arr = []
dividers.each { |num| arr << num }

if arr[0] == size
  puts size
elsif arr.size == 1
  puts arr[0]
else
  puts 1
end
