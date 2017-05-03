require "./module.rb"
require "./employee.rb"
require "./manager.rb"
require "./intern.rb"


employee1 = Employee.new(first_name: "avrohom", last_name: "luban", age: 27, job: "ecommerce site", salary: 50000)

p employee1
employee1.display_info
employee1.salary = 65000
employee1.display_info

manager1 = Manager.new(first_name: "jay", last_name: "silver", age: 57, job: "site manager", salary: 90000, yearsonjob: 5)

intern1 = Intern.new(first_name: "sammy", last_name: "bones", age: 57, job: "help", salary: 2000)

p manager1
manager1.display_info
manager1.salary = 95000
manager1.display_info
manager1.give_a_raise
p manager1.salary
p manager1.yearsonjob
manager1.yearsonjob = 8
p manager1
manager1.send_email
intern1.display_info

