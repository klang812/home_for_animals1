class Seed
  def self.begin
    Shelter.destroy_all
    Pet.destroy_all
    seed = Seed.new
    seed.generate_seeds
    puts "Congrats #{Shelter.count} shelters have been made"
    puts "Congrats #{Pet.count} pets have been made"
  end
  def generate_seeds
    5.times do 
      shelter = Shelter.create!(
        location: Faker::Movies::LordOfTheRings.location
      )
      10.times do
        Pet.create!(
          name: Faker::Movies::Ghostbusters.character,
          animal_type: Faker::Creature::Animal.name,
          breed: Faker::Creature::Dog.breed,
          shelter_id: shelter.id
        )
      end
    end
  end
end

Seed.begin
