# db/seeds.rb
Yacht.destroy_all
Booking.destroy_all


# Create yachts associated with users
yacht1 = Yacht.create!(
  name: 'Ocean Voyager',
  description: 'Luxurious yacht with panoramic views of the ocean. Perfect for a relaxing getaway.',
  price_per_day: 1200,
  capacity: 10,
  user: user1
)

yacht2 = Yacht.create!(
  name: 'Sunset Serenity',
  description: 'Elegant yacht designed for romantic sunset cruises. Ideal for couples seeking a magical experience.',
  price_per_day: 1500,
  capacity: 4,
  user: user1
)

yacht3 = Yacht.create!(
  name: 'Island Explorer',
  description: 'Spacious yacht equipped for island hopping adventures. Explore hidden gems in style.',
  price_per_day: 1800,
  capacity: 12,
  user: user1
)

yacht4 = Yacht.create!(
  name: 'Azure Dream',
  description: 'Modern and sleek yacht offering a blend of comfort and cutting-edge design. A true sea masterpiece.',
  price_per_day: 2000,
  capacity: 6,
  user: user1
)

yacht5 = Yacht.create!(
  name: 'Majestic Mariner',
  description: 'Regal yacht designed for hosting grand events at sea. Impress your guests with unmatched luxury.',
  price_per_day: 2500,
  capacity: 20,
  user: user1
)

yacht6 = Yacht.create!(
  name: 'Harbor Haven',
  description: 'Classic yacht with a timeless appeal. Ideal for those who appreciate the charm of maritime traditions.',
  price_per_day: 1000,
  capacity: 8,
  user: user1
)

yacht7 = Yacht.create!(
  name: 'Celestial Cruiser',
  description: 'Futuristic yacht featuring state-of-the-art technology. Embark on a journey to the stars in style.',
  price_per_day: 3000,
  capacity: 6,
  user: user1
)

yacht8 = Yacht.create!(
  name: 'Golden Horizon',
  description: 'Yacht with a golden touch, perfect for those seeking opulence and extravagance on the open sea.',
  price_per_day: 2800,
  capacity: 10,
  user: user1
)

yacht9 = Yacht.create!(
  name: 'Breezy Bliss',
  description: 'Light and airy yacht designed for a refreshing and rejuvenating sailing experience.',
  price_per_day: 1200,
  capacity: 5,
  user: user1
)

yacht10 = Yacht.create!(
  name: 'Sapphire Serenade',
  description: 'Exquisite yacht with sapphire accents, offering a serene and enchanting atmosphere for sea enthusiasts.',
  price_per_day: 2200,
  capacity: 8,
  user: user1
)

puts 'Seeds executed successfully!'
