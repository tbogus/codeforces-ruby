# https://codeforces.com/problemset/problem/386/A

gets
bids = gets.split(' ').map(&:to_i)

highest_bid = 0
highest_bid_index = 0
second_highest_bid = 0

bids.each_with_index do |bid, index|
  if bid > highest_bid
    second_highest_bid = highest_bid
    highest_bid = bid
    highest_bid_index = index
  elsif bid > second_highest_bid
    second_highest_bid = bid
  end
end

puts "#{highest_bid_index+1} #{second_highest_bid}"
