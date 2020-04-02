# https://codeforces.com/problemset/problem/412/B

input = gets.split(' ').map(&:to_i)
transfer_speed_table = gets.split(' ').map(&:to_i)

k = input[1]

transfer_speed_table.sort! { |a, b| b <=> a }

puts transfer_speed_table[k-1]
