require 'rails_helper'

describe 'Delete a pet', :type => :request do
  before do
    FactoryBot.create(:shelter) do |shelter|
      FactoryBot.create_list(:pet, 10, shelter_id: shelter.id)
      delete api_v1_shelter_pet_path(:shelter_id, :id)
    end
  end

  it 'destroys a pet :(' do
    expect(response).to have_http_status(:no_content)
  end

  context 'when unsuccessful' do
    it 'returns a status code of 404' do
      delete api_v1_shelter_pet_path(id + 1)
      expect(response).to have_http_status(:not_found)
    end
  end
end
