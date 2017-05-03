array = ["avrohom", "nosson", "zandy", "eliyahu"]

spot = 1
array.each do | person |
  puts "coming in number #{spot} was #{person}"
  spot += 1
end

