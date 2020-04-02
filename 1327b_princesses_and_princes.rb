#!usr/bin/env ruby

# https://codeforces.com/problemset/problem/1327/B

require 'set'

t = gets.to_i

t.times do
  n = gets.to_i

  options = []

  n.times do
    options << gets.split(' ').map(&:to_i).drop(1)
  end

  choices = Set.new
  first_untaken_princess = nil

  options.each_with_index do |op, num|
    first_untaken_princess ||= num + 1 if op.size == 0

    op.each_with_index do |prince, n|
      unless choices.include? prince
        choices << prince
        break
      end
      if n + 1 == op.size
        first_untaken_princess ||= num + 1
      end
    end
  end

  if first_untaken_princess
    first_untaken_prince = 1

    while true do
      if choices.include? first_untaken_prince
        first_untaken_prince += 1
      else
        break
      end
    end
    puts "IMPROVE\n#{first_untaken_princess} #{first_untaken_prince}"
  else
    puts "OPTIMAL"
  end
end
