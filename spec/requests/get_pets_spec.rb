require 'rails_helper'



describe 'Get all of the pets', :type => :request do

  before do 
    Pet.destroy_all
    Shelter.destroy_all
    FactoryBot.create(:shelter) do |shelter|
      FactoryBot.create_list(:pet, 10, shelter_id: shelter.id)
      get api_v1_shelter_pets_path(shelter.id)
    end
  end    

  it 'returns all of the pets' do
    expect(JSON.parse(response.body).size).to eq(10)
  end

  it 'returns status code of 200' do
    expect(response).to have_http_status(:success)
  end
end

describe '#show', :type => :request do

  context 'when successful' do
    before do
      @shelter = Shelter.create(location: "Portland")
      @pet = Pet.create(name: "Eli", animal_type: "Dog", breed: "Lab", shelter_id: @shelter.id)
        get api_v1_shelter_pet_path(@shelter.id, @pet.id)
    end
    it 'returns a pet' do
      expect(JSON.parse(response.body)['name']).to eq ("Eli")
    end
    it 'returns status code of 200' do
      expect(response).to have_http_status(:success)
    end
  end
end