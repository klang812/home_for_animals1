require 'rails_helper'

describe 'Get request Shelters' do
  before do
    Shelter.destroy_all
  end
  let!(:shelters) { FactoryBot.create_list(:shelter, 10) }
  
  describe 'gets all shelters', :type => :request do
    before { get api_v1_shelters_path }

    it 'returns all of the shelters' do
      expect(JSON.parse(response.body).size).to eq(10)
    end

    it 'returns status code of 200' do
      expect(response).to have_http_status(:success)
    end
  end

  describe '#show', :type => :request do
    let!(:shelter) { shelters.first }

    context 'when successful' do
      before do
        get api_v1_shelter_path(shelter)
        @parse = JSON.parse(response.body)
      end
      it 'returns a shelter' do
        expect(@parse['id']).to eq shelter.id
      end
      it { expect(response).to have_http_status :success }
    end

    context 'when unsuccessful' do 
      before { get api_v1_shelter_path(shelters.last.id + 1) }
      it { expect(response).to have_http_status :not_found }
    end
  end
end