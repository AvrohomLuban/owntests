module Email

  def send_email
    puts "sending email..."
    #TODO: code for email
    puts "email sent!"
  end

end

class Employee

  attr_reader :first_name , :last_name , :age,  :job , :salary
  attr_writer :age , :job , :salary ,

  def initialize (input_hash)
    @first_name = input_hash[:first_name]
    @last_name = input_hash[:last_name]
    @age = input_hash[:age]
    @job = input_hash[:job]
    @salary = input_hash[:salary]
  end

  def display_info
    puts "#{@first_name} #{@last_name} is incharge of #{@job}, and makes #{@salary} a year"
  end


end

class Manager < Employee

  include Email

  attr_accessor :yearsonjob

   def initialize (input_hash)
    super
    @yearsonjob = input_hash[:yearsonjob]
  end

  def give_a_raise
    @salary = @salary + 2500
  end

  def send_email
    puts "sending email..."
    #TODO: code for email
    puts "email sent!"
  end

end

class Intern < Employee

  include Email

end





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

