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