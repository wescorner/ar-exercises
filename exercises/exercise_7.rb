require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Enter store name"
store_name = gets.chomp

store = Store.create(name: store_name, annual_revenue: 1, mens_apparel: false, womens_apparel: false)

store.errors.full_messages.each do |err|
  puts err
end

puts "Enter employee name"
employee_name = gets.chomp

person = Employee.create(first_name: employee_name)

person.errors.full_messages.each do |err|
  puts err
end