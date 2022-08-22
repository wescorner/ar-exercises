require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Amatus", last_name: "Celina", hourly_rate: 63)
@store1.employees.create(first_name: "Hotaru", last_name: "Adalhard", hourly_rate: 37)
@store2.employees.create(first_name: "Wesley", last_name: "Corner", hourly_rate: 75)
@store2.employees.create(first_name: "Tom", last_name: "Keech", hourly_rate: 90)
@store2.employees.create(first_name: "Gregory", last_name: "Kalogeros", hourly_rate: 50)
@store4.employees.create(first_name: "Random", last_name: "Person", hourly_rate: 14)
@store5.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 20)
@store6.employees.create(first_name: "Jamal", last_name: "Browner", hourly_rate: 45)

