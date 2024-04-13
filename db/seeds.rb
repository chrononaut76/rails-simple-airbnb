# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

4.times do
  new_flat = Flat.create!(
    name: Faker::Lorem.sentence(word_count: 5, supplemental: true, random_words_to_add: 2),
    address: Faker::Address.full_address,
    description: Faker::Lorem.sentences(number: 4).join(' '),
    price_per_night: (75..150).step(5).to_a.sample,
    number_of_guests: (1..5).to_a.sample
  )
end
