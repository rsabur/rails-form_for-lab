# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all 
SchoolClass.destroy_all
require 'faker'

puts "...Creating Students! 👩🏾‍🎓"
20.times do 
    Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

puts "...Creating School Classes! 📚"
10.times do
    SchoolClass.create(title: Faker::Book.title, room_number: rand(101..111))
end

puts "Seeded Successfully! 🎉"