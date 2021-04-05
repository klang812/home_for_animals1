require 'rails_helper'

describe 'Get all of the pets', :type => :request do

  before do 
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
      FactoryBot.create(:shelter) do |shelter|
        FactoryBot.create_list(:pet, 10, shelter_id: shelter.id)
        get api_v1_shelter_pets_path(shelter.id)
        @parse = JSON.parse(response.body)
      end
    end
    it 'returns a pet' do
      expect(@parse['shelter_id']).to eq shelter.id
    end
    it 'returns status code of 200' do
      expect(response).to have_http_status(:success)
    end
  end

  context 'when unsuccessful' do
    before { get api_v1_shelter_pets_path(shelters.pets.last.shelter_id + 1) }
    it 'returns pet not found' do
      expect(response).to have_http_status(:not_found)
    end
  end
end