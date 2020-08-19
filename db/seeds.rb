# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "destroy user"
User.destroy_all
puts "destroy projects"
Project.destroy_all

ludo = User.create!(email: "ludo@gmail.com", password: "password")
aurel = User.create!(email: "aurel@gmail.com", password: "password")

code = ['python','php','ruby','javascript','java', 'css', 'html']

puts 'Creating 2 projets...'
2.times do |i|
  project = Project.create!(
    name: Faker::Artist.name,
    description: Faker::Company.catch_phrase,
    code: code.sample,
    user: User.first
  )
  puts "#{i + 1}. #{project.name}"
end
puts 'Finished!'
