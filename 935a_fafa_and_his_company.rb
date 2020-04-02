# https://codeforces.com/problemset/problem/935/A

employee_count = gets.to_i

answer = 0

(1..employee_count/2).each do |l|
  answer += 1 if employee_count % l == 0
end

puts answer
