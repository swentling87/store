# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
20.times do
  Product.create!(name: Faker::Superhero.name, description: Faker::Hipster.paragraph, price: Faker::Number.decimal(2), category: Faker::Commerce.department(1), img: Faker::Avatar.image )
end
products = Product.all

puts "Seed finished"
puts "#{Product.count} products created."
