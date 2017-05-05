class List

  def initialize
    @tasks = []
  end

  def add_tasks(task)
    @tasks << {name: task, complete: false}
  end

  def show_tasks
    puts "Here is list of tasks:"
    x = 1
    @tasks.each do |task|
      if task[:complete] == false
        puts "#{x}. #{task[:name]}"
        x += 1
      end
    end
  end

  def show_completed_tasks
    x = 1
    puts "Here is list of completed tasks:"
    @tasks.each do |task|
      if task[:complete] 
        puts "#{x}. #{task[:name]}"
      end
    end
  end

  def mark_done(nameoftask)
    @tasks.each do |task|
      if task[:name] == nameoftask
        task[:complete] = true
      end
    end
  end

end

list = List.new

list.add_tasks("take out trash")

list.add_tasks("call back judaica store")

list.add_tasks("shop mothers day")

list.show_tasks

list.mark_done("take out trash")

list.show_tasks

list.mark_done("call back judaica store")

list.show_tasks

list.show_completed_tasks


