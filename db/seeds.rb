# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
 {
   name:         'Dishoom',
   address:      '7 Boundary St, London E2 7JE',
   phone_number:  '0491567896',
   category:      "japanese"
 },
 {
   name:         'Au Nem doré',
   address:      '56A Shoreditch High St, London E1 6PQ',
   phone_number:  '0491587896',
   category:      "chinese"
 },
   {
   name:         'Une fois',
   address:      '56A Shoreditch High St, London E1 6PQ',
   phone_number:  '0591567896',
   category:      "belgian"
 },
   {
   name:         'Le Big Mac',
   address:      '56A Shoreditch High St, London E1 6PQ',
   phone_number:  '0791567896',
   category:      "french"
 },
   {
   name:         'Chez Dino',
   address:      '56A Shoreditch High St, London E1 6PQ',
   phone_number:  '0191567896',
   category:      "italian"
 }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
