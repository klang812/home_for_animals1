require 'rails_helper'

describe 'update a shelter', :type => :request do
  let!(:shelter) { FactoryBot.create(:shelter) }
  let!(:attr) { {location: 'Portland'} }

  context 'when successful' do
    before do
      patch api_v1_shelter_path(shelter.id), params: attr
      @parse = JSON.parse(response.body)
    end
    it 'updates a shelter' do
      attr.entries do |key, val|
        it { expect(@parse[key]).to eq val }
      end
    end
    it 'returns a value of 200' do
      expect(response).to have_http_status :created 
    end
  end
  context 'when unsuccessful' do
    it 'return a value of 422' do
      patch api_v1_shelter_path(shelter.id), params: {location: ""}
      expect(response).to have_http_status :unprocessable_entity
    end
  end
end