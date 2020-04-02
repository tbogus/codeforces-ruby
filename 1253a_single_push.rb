#!/usr/bin/env ruby
count = gets.to_i

answers = []

count.times do
  n = gets.chomp.to_i

  a = gets.chomp.split(' ').map(&:to_i)
  b = gets.chomp.split(' ').map(&:to_i)

  i = 0
  while a[i] == b[i] && i < n do
    i += 1
  end

  if i == n
    answers << "YES"
  elsif (k = a[i] - b[i]) > 0
    answers << "NO"
  else
    while i < n && a[i] - b[i] == k do
      i += 1
    end

    if i == n
      answers << "YES"
    elsif a[i] == b[i]
      i += 1
      while i < n && a[i] == b[i] do
        i += 1
      end

      if i == n
        answers << "YES"
      else
        answers << "NO"
      end
    else
      answers << "NO"
    end
  end
end

answers.each { |answer| puts answer }
