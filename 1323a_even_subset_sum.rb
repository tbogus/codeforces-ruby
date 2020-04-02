#!usr/bin/env ruby

# https://codeforces.com/problemset/problem/1323/A

count = gets.to_i

answers = []

count.times do
  n = gets.to_i
  a = gets.split(' ').map(&:to_i)
  
  odd_index = nil
  
  a.each_with_index do |num, index|
    if num % 2 == 0
      answers << 1 << index + 1
      break
    elsif n == 1
      answers << -1
      break
    else
      if odd_index.nil?
        odd_index = index + 1
      else
        answers << 2 << "#{odd_index} #{index+1}"
        break
      end      
    end
  end
end

answers.each { |answer| puts answer }
