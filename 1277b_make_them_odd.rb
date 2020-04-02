#!usr/bin/env ruby

#https://codeforces.com/problemset/problem/1277/B

require 'set'

n = gets.to_i

n.times do 
 size = gets
 input = gets.split(' ').map(&:to_i) 
 counter = Set.new

 input.each do |i|
  while i % 2 == 0 do   
   counter.add(i)
   i /= 2   
  end  
 end

 puts counter.size
end
