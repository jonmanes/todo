# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
20.times do
  User.create!(
  username: Faker::Internet.user_name,
  password: Faker::Internet.password
  )
end
users = User.all

admin = User.create!(
   username: 'admin@example.com',
   password: 'helloworld',
 )

 20.times do
   List.create!(
   user_id: User.first.id,
   name: Faker::Hacker.adjective,
   permissions: 'private'
   )
 end
 lists = List.all

 20.times do
   Item.create!(
   list_id: List.first.id,
   description: Faker::Hacker.say_something_smart
   )
 end
 items = Item.all


puts "Seed finished"
puts "#{User.count} users created"
puts "#{List.count} Lists created"
puts "#{Item.count} users created"
