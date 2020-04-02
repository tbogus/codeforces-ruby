# https://codeforces.com/problemset/problem/306/A

input = gets.split(' ').map(&:to_i)

candies = input[0]
friends = input[1]

c = candies / friends
leftover = candies - c * friends

puts ("#{c} " * (friends - leftover) + "#{c + 1} " * leftover).rstrip
