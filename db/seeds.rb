# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all

puts "Creating restaurants..."

flat1 = {
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
}

flat2 = {
  name: 'Sea View Apartment Dubai',
  address: 'Address JBR, Dubai Marina, Dubai',
  description: 'A lovely holiday feel with breathtaking views of the ocean. One double bedrooms, open plan living area, large kitchen and jacuzzi',
  price_per_night: 150,
  number_of_guests: 2
}

flat3 = {
  name: 'Downtown Hotel Apartment Dubai',
  address: 'Address Downtown, DIFC, Dubai',
  description: 'A business chic apartment with views of the burj. Two double bedrooms, open plan living area, small kitchen',
  price_per_night: 100,
  number_of_guests: 4
}

flat4 = {
  name: 'Downtown Apartment New York',
  address: 'Wall St, New York City, New York',
  description: 'A business chic apartment with views OWTC. On double bedrooms, open plan living area, kitchen',
  price_per_night: 125,
  number_of_guests: 2
}

[flat1, flat2, flat3, flat4].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end

puts "Finished!"
