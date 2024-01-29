# db/seeds.rb

# Create users
user1 = User.create!(
  email: 'user1@example.com',
  password: 'password',
  first_name: 'John',
  last_name: 'Doe'
)

user2 = User.create!(
  email: 'user2@example.com',
  password: 'password',
  first_name: 'Jane',
  last_name: 'Doe'
)

# Create yachts associated with users
yacht1 = Yacht.create!(
  name: 'Yacht 1',
  description: 'Description for Yacht 1',
  price_per_day: 1000,
  capacity: 10,
  user: user1
)

yacht2 = Yacht.create!(
  name: 'Yacht 2',
  description: 'Description for Yacht 2',
  price_per_day: 1200,
  capacity: 12,
  user: user2
)

yacht3 = Yacht.create!(
  name: 'Yacht 3',
  description: 'Description for Yacht 3',
  price_per_day: 800,
  capacity: 8,
  user: user1
)

puts 'Seeds executed successfully!'
