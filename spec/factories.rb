FactoryBot.define do
  factory(:shelter) do
    location {Faker::Movies::LordOfTheRings.location}
  end
  factory(:pet) do
    name {Faker::Movies::Ghostbusters.character}
    animal_type {Faker::Creature::Animal.name}
    breed {Faker::Creature::Dog.breed}
    association :shelter, factory: :shelter
  end
end
