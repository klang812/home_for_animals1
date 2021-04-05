require 'rails_helper'

describe 'Delete a shelter', :type => :request do
  let!(:shelter) { FactoryBot.create(:shelter) }

  context 'when successful' do
    it 'deletes a shelter' do
      delete api_v1_shelter_path(shelter.id)
      expect(response).to have_http_status :no_content
    end
  end
  context 'when unsuccessful' do
    it 'return a 404' do
      delete api_v1_shelter_path(shelter.id + 1)
      expect(response).to have_http_status :not_found
    end
  end
end