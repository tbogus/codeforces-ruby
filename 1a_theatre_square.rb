#!/usr/bin/env ruby
input = gets.split(' ').map(&:to_i)

width = input[0] / input[2]
width += 1 if input[0] % input[2] != 0

length = input[1] / input[2]
length += 1 if input[1] % input[2] != 0

puts width * length
