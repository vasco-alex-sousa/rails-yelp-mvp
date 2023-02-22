# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create an array of category options
categories = ["chinese", "italian", "japanese", "french", "belgian"]

# Create 5 restaurants with valid attributes
5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: categories.sample
  )

  # Create 3 reviews for each restaurant
  3.times do
    restaurant.reviews.create!(
      content: Faker::Restaurant.review,
      rating: rand(0..5)
    )
  end
end
