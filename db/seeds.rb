# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = ["chinese", "italian", "japanese", "french", "belgian"]
ratings = [0, 1, 2, 3, 4, 5]
30.times do
  resto = Restaurant.create(
    name: Faker::Commerce.department,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: categories.sample
    )
  10.times do
    review = Review.new(
      content: Faker::Lorem.sentence,
      rating: ratings.sample
      )
    review.restaurant = resto
    review.save
  end
end
