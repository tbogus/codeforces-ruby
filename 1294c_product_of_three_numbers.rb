#!usr/bin/env ruby

# https://codeforces.com/problemset/problem/1294/C

require 'prime'

n = gets.to_i

primes = []
Prime.each(31630) { |p| primes << p }

n.times do
 num = gets.to_i
 answer = []
 temp = 1
 i = 0
 limit = Math.sqrt(num).floor
 failed = false

 while answer.size < 2  
  if num % primes[i] == 0
   if answer.include?(primes[i])
    temp *= primes[i]
    num /= primes[i]

    if !answer.include?(temp)
     answer << temp
     temp = 1
    end

   else
    answer << primes[i]
    num /= primes[i]
   end

  else
   i += 1
   if primes[i] > limit 
    failed = true
    break
   end
  end
 end

 rest = temp * num
 failed = true if rest == 1 || answer.include?(rest)

 unless failed
  answer << rest
  puts "YES"
  puts answer.join(' ')
 else
  puts "NO"
 end
end