#!/usr/bin/env ruby
input = gets.chomp.split(' ').map(&:to_i)
scores = gets.chomp.split(' ').map(&:to_i)

i = k = input[1] - 1
n = input[0]

if scores[k] > 0
  if i == n - 1
    i += 1    
  end
  while scores[i] == scores[k] && i < n
    i += 1
  end

  puts i
else 
  loop do
    i -= 1  
    break if i < 0 || scores[i] != 0
  end

  if i == 0 && scores[i] == 0
    puts 0
  end

  puts i + 1
end

