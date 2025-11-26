# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Flat.destroy_all

puts 'creating Flats...'

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  picture_url: "https://images.unsplash.com/photo-1598228723793-52759bba239c?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGhvdXNlfGVufDB8fDB8fHww"
)

puts 'Create first'

Flat.create!(
  name: 'Modern Loft in Paris',
  address: '25 Rue de Rivoli, Paris 75004',
  description: 'Stylish loft in the heart of Paris. High ceilings, exposed brick walls, cozy mezzanine bedroom, and a balcony overlooking the city.',
  price_per_night: 120,
  number_of_guests: 2,
  picture_url: "https://images.unsplash.com/photo-1505691938895-1758d7feb511?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.1.0"
)
puts 'Create second'

Flat.create!(
  name: 'Cozy Chalet in Chamonix',
  address: '145 Route des Praz, Chamonix 74400',
  description: 'Warm and inviting mountain chalet. Three bedrooms, fireplace, fully equipped kitchen, and breathtaking views of Mont Blanc.',
  price_per_night: 200,
  number_of_guests: 6,
  picture_url: "https://images.unsplash.com/photo-1510798831971-661eb04b3739?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzF8fGhvdXNlfGVufDB8fDB8fHww"
)

puts 'Create third'

puts "Finished! Created #{Flat.count} restaurants."
