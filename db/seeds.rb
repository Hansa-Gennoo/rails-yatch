# db/seeds.rb

# Create users
user1 = User.create!(
  email: 'john.doe@example.com',
  password: 'password',
  first_name: 'John',
  last_name: 'Doe'
)

user2 = User.create!(
  email: 'jane.doe@example.com',
  password: 'password',
  first_name: 'Jane',
  last_name: 'Doe'
)

# Create yachts associated with users
yacht1 = Yacht.create!(
  name: 'Serenity',
  description: 'Luxury yacht with spacious rooms and top-notch amenities.',
  price_per_day: 1500,
  capacity: 12,
  user: user1
)

yacht2 = Yacht.create!(
  name: 'Ocean Voyager',
  description: 'Sail the seas in style with this elegant and comfortable yacht.',
  price_per_day: 1800,
  capacity: 10,
  user: user1
)

yacht3 = Yacht.create!(
  name: 'Sunset Explorer',
  description: 'Perfect for a romantic evening cruise to watch the sunset.',
  price_per_day: 1000,
  capacity: 8,
  user: user1
)

puts 'Seeds executed successfully!'
