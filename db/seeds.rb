# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

restaurants = [
  { name: 'Vietnam', address: '2 Henri Isnard', category: 'japanese' },
  { name: 'La Regence', address: 'Vence', category: 'french' },
  { name: 'Le Lodge', address: 'Nice', category: 'italian' },
  { name: 'Fuckedup day', address: 'Hell', category: 'belgian' },
  { name: 'Whatever', address: 'Cant take it today', category: 'chinese' }
]

restaurants.each do |restaurant_params|
  Restaurant.create!(restaurant_params)
end
