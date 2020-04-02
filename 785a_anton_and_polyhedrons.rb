# https://codeforces.com/problemset/problem/785/A

count = gets.to_i

faces_count = 0
count.times do
  name = gets.chomp

  faces_count += 
    if name == "Tetrahedron"
      4
    elsif name == "Cube"
      6
    elsif name == "Octahedron"
      8
    elsif name == "Dodecahedron"
      12
    elsif name == "Icosahedron"
      20
    end
end

puts faces_count
