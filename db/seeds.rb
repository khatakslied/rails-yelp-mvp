require 'faker'

Restaurant.destroy_all

restaurant_name_endings = %w[Cafe Restaurant Bistro]

5.times do
  Restaurant.create!(
    name: "#{Faker::Games::Pokemon.move} #{restaurant_name_endings.sample}",
    address: Faker::Games::Pokemon.location,
    phone_number: Faker::PhoneNumber.extension,
    category: Restaurant::CATEGORIES.sample
  )
end
