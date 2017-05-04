students =[]
while true
puts "please enter a student name"
inputs = gets.chomp
if inputs == "done"
  break
else
students << inputs
end
end

p students

students.shuffle!

until students.length == 0
  
  if students.length > 3
    take2 = students.pop(2)
  elsif students.length <= 3
    take2 = students.pop(3)
  end

  students.take2
  puts "Group: #{take2.join(",")}"
end
