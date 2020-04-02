#!usr/bin/env ruby

#https://codeforces.com/problemset/problem/1097/A

card_on_table = gets.chomp
player_hand = gets.chomp.split(' ')

answered = false

player_hand.each do |card|
  if card_on_table[0] == card[0] || card_on_table[1] == card[1]
    puts "YES"
    answered = true
    break
  end
end

puts "NO" unless answered
