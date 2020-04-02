# https://codeforces.com/problemset/problem/1231/C

input = gets.split(' ').map(&:to_i)
n = input[0]
m = input[1]

answer = 0
matrix = []

n.times do 
  matrix << gets.split(' ').map(&:to_i)
end

invalid = false

matrix.to_enum.with_index.reverse_each do |row, row_index|
  break if invalid
  row.to_enum.with_index.reverse_each do |number, col_index|
    break if invalid

    if number == 0  
      number = matrix[row_index][col_index] =
        [matrix[row_index][col_index+1], matrix[row_index+1][col_index]].min - 1
    elsif (row_index != n-1 &&
          matrix[row_index][col_index] >= matrix[row_index+1][col_index]) ||
          (col_index != m-1 &&
          matrix[row_index][col_index] >= matrix[row_index][col_index+1])
            invalid = true
            answer = -1
            break
    end

    answer += number
  end
end

puts answer
