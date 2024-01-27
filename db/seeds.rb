# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Yacht.destroy_all

Yacht.create(name: "Yaasir", capacity: 10, description: "Beautiful yacht for 10 people for your next event!", price_per_day: 15000, image: "https://cdn.boatinternational.com/convert/files/2022/07/76393b30-0096-11ed-aed3-f71d7c568098-AHPO-hero-Photography-guillaume-plisson.jpg/r%5Bwidth%5D=1920/76393b30-0096-11ed-aed3-f71d7c568098-AHPO-hero-Photography-guillaume-plisson.webp", user_id: User.last.id)

Yacht.create(name: "Pearl", capacity: 15, description: "Beautiful yacht for 10 people for your next event!", price_per_day: 20000, image: "https://cdn.boatinternational.com/convert/files/2022/07/76393b30-0096-11ed-aed3-f71d7c568098-AHPO-hero-Photography-guillaume-plisson.jpg/r%5Bwidth%5D=1920/76393b30-0096-11ed-aed3-f71d7c568098-AHPO-hero-Photography-guillaume-plisson.webp", user_id: User.last.id)

Yacht.create(name: "Ocean", capacity: 20, description: "Beautiful yacht for 10 people for your next event!", price_per_day: 30000, image: "https://cdn.boatinternational.com/convert/files/2022/07/76393b30-0096-11ed-aed3-f71d7c568098-AHPO-hero-Photography-guillaume-plisson.jpg/r%5Bwidth%5D=1920/76393b30-0096-11ed-aed3-f71d7c568098-AHPO-hero-Photography-guillaume-plisson.webp", user_id: User.last.id)

Yacht.create(name: "Marina", capacity: 30, description: "Beautiful yacht for 10 people for your next event!", price_per_day: 40000, image: "https://cdn.boatinternational.com/convert/files/2022/07/76393b30-0096-11ed-aed3-f71d7c568098-AHPO-hero-Photography-guillaume-plisson.jpg/r%5Bwidth%5D=1920/76393b30-0096-11ed-aed3-f71d7c568098-AHPO-hero-Photography-guillaume-plisson.webp", user_id: User.last.id)
