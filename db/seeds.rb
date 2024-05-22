# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Creating restaurants..."
restaurants = [
  { name: 'Le Gourmet', address: '123 Rue de Paris', phone_number: '01 23 45 67 89', category: 'french' },
  { name: 'Sushi Master', address: '456 Tokyo Street', phone_number: '02 34 56 78 90', category: 'japanese' },
  { name: 'Pasta Palace', address: '789 Roma Avenue', phone_number: '03 45 67 89 01', category: 'italian' },
  { name: 'Chinatown Delight', address: '321 Beijing Road', phone_number: '04 56 78 90 12', category: 'chinese' },
  { name: 'Belgian Bistro', address: '654 Brussels Square', phone_number: '05 67 89 01 23', category: 'belgian' }
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
