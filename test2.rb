# If Sam can cook more than 10 recipes and Sally speaks more than 5 languages, they should date. If Sam can make crepes or Sally can speak French, they should marry

Sam = {cook: 10, creps: false}
Sally = {languages: 6, french: false}

if Sam[:cook] >= 10 && Sally[:languages] >= 5
    puts "U guys should date"
elsif Sam[:creps] == true || Sally[:french] == true
  puts "U guys should marry!"
end


