# Final Review
# Create a program that puts your class into groups! Have the program request the user to enter each student’s names.  Assume the classroom has an even number of students, so there are only groups of two. For example, you can have the program output groups like so:
#   Group: Hermione Seamus
#       Group: Lucius Cho
#       Group: Sirius Luna
#       Group: Severus Draco
# Refactor the program to take an odd or even number of students. If odd, one group should have three students. 
#   Group: Hermione Seamus
#       Group: Lucius Cho
#       Group: Sirius Luna
#       Group: Severus Draco Harry

names = []
student = "hi"
until student == "done"
  puts "enter student name"
  student = gets.chomp
unless student == "done"
  names << student
end
end

shuffle = names.shuffle

numberofstudents = shuffle.length

numberofstudentshalf = numberofstudents / 2

if numberofstudents.even?
x = 0
numberofstudentshalf.times do 
  puts "Group: #{shuffle[x]} #{shuffle[x + 1]}"
  x = x + 2
end

elsif numberofstudents.odd?
  lastinput = shuffle.pop

  x = 0
  counter = 1
  numberofstudentshalf.times do 
    if counter == numberofstudentshalf
      puts "Group: #{shuffle[x]} #{shuffle[x + 1]} #{lastinput}"
    else
    puts "Group: #{shuffle[x]} #{shuffle[x + 1]}"
    x = x + 2
    counter = counter + 1
    end
  end
end






