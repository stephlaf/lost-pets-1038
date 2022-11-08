10.times do
  pet = Pet.new(
    name: Faker::Hipster.word,
    address: Faker::Address.street_address,
    species: Pet::SPECIES.sample,
    found_on: Date.today - rand(1..10)
  )
  pet.save!
end
