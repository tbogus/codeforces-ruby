#!usr/bin/env ruby

# https://codeforces.com/problemset/problem/996/A

amount = gets.to_i

bills = [100, 20, 10, 5, 1]

answer = 0

bills.each do |bill|
  current_bill_count = amount / bill
  answer += current_bill_count
  amount -= current_bill_count * bill
end

puts answer
