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