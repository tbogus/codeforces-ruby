#!usr/bin/env ruby

# https://codeforces.com/problemset/problem/1262/B

n = gets.to_i

n.times do
 size = gets.to_i
 input = gets.split(' ').map(&:to_i)
 used = Array.new(size, false)
 maxi = 0
 min = 0
 output = []
 failed = false

 input.each_with_index do |num, i|
  if num < i + 1
   puts "-1"
   failed = true
   break
  end

  maxi = [maxi, num].max
    
  unless used[maxi-1]
   output << maxi
   used[maxi-1] = true
  else
   while used[min] do min += 1 end
   output << min += 1
  end
 end
 puts output.join(' ') unless failed
end
