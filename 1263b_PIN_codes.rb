# https://codeforces.com/problemset/problem/1263/B

gets.to_i.times do
 count = gets.to_i
 cards = []
 digits = Array.new(10, false)

 count.times do |i|
  cards << card = gets.chomp.split('').map(&:to_i)  
  digits[cards[i][0]] = true  
 end

 moves = 0
 
 i = 0
 while i < count do
  j = i + 1

  while j < count do
   if cards[i] == cards[j]

    k = 0    
    k += 1 while digits[k] 
    
    cards[i][0] = k
    digits[k] = true
    moves += 1
    break
   end

   j += 1
  end
  i += 1
 end

 puts moves
 cards.each { |card| puts card.join('') }
end