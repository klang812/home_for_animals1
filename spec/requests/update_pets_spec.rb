require 'rails_helper'

describe 'update a pet', :type => :request do
  before do
    FactoryBot.create(:shelter) do |shelter|
      FactoryBot.create_list(:pet, 10, shelter_id: shelter.id)
      patch api_v1_shelter_pet_path(:shelter_id, :id), params: { name: 'Eli' }
    end
  end
  
  it 'updates a pet' do
    expect(Pet.find(:id).name).to eq ('Eli')
  end
  
  it 'returns a status code of 200' do
    expect(response).to have_http_status(:created)
  end

  it 'returns a value of 422' do
    patch api_v1_shelter_pet_path(:shelter_id, :id), params: {name: ""}
    expect(response).to have_http_status :unprocessable_entity
  end
end