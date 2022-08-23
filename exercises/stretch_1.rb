require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Stretch Exercise 1"
puts "----------"

employee = @store6.employees.create(first_name: "Password", last_name: "Protected", hourly_rate: 69)

puts employee.password
