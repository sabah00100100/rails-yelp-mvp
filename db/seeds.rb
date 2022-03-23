# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all

puts 'Creating seed...'
Restaurant.create(name: "Kobé", address: "JEan jaures", category: "japanese")
Restaurant.create(name: "Panda chine", address: "Abbaye", category: "chinese")
Restaurant.create(name: "La maison", address: "Cannes", category: "italian")

review = Review.new(content: "à eviter!", rating:"1");
review.restaurant = Restaurant.first
review.save

review = Review.new(content: "The Best !", rating:"5");
review.restaurant = Restaurant.first
review.save

puts 'Seed created!'
