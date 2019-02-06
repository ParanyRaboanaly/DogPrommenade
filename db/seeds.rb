# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

10.times do |index|
  Citie.create(
    city_name: Faker::Name.first_name
  )
  Dogsitter.create(
    name: Faker::Name.first_name,
    citie_id: rand(Citie.first.id..Citie.last.id)
  )
  Dog.create(
    name: Faker::Name.first_name,
    citie_id: rand(Citie.first.id..Citie.last.id)
  )
  Stroll.create(
    name: Faker::Name.first_name,
    citie_id: rand(Citie.first.id..Citie.last.id),
    dog_id: rand(Dog.first.id..Dog.last.id),
    dogsitter_id: rand(Dogsitter.first.id..Dogsitter.last.id)
  )
end