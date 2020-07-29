require 'active_record'

class Todo < ActiveRecord::Base
  
  def due_today?
    due_date == Date.today
  end

  def self.overdue
    all.where("due_date < ?", Date.today)
  end

  def self.due_today
    all.where("due_date = ?", Date.today)
  end

  def self.due_later
    all.where("due_date > ?", Date.today)
  end

  def to_displayable_string
    display_status = completed ? "[X]" : "[ ]"
    display_date = due_today? ? nil : due_date
    "#{id}. #{display_status} #{todo_text} #{display_date}"
  end
  
  def self.show_list
    puts "My Todo-list\n\n"
    
    puts "Overdue\n"
    puts overdue.map { |todo| todo.to_displayable_string }
    puts "\n\n"

    puts "Due Today\n"
    puts due_today.map { |todo| todo.to_displayable_string }
    puts "\n\n"

    puts "Due Later\n"
    puts due_later.map { |todo| todo.to_displayable_string }
    puts "\n\n"
  end

  def self.add_task(new_todo)
    create!(todo_text: new_todo.values[0], due_date: Date.today + new_todo.values[1], completed: false)
  end

  def self.mark_as_complete!(todo_id)
    update(todo_id , completed: true)
  end
end