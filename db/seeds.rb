# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Planet.destroy_all

10.times do
  Planet.create(name: Faker::StarWars.planet)
end

Spaceshift.destroy_all

20.times do
  Spaceshift.create(name: Faker::StarWars.vehicle)
end
