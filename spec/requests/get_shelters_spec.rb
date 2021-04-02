require 'rails_helper'

describe 'Get request Shelters' do

  let!(:shelters) { FactoryBot.create_list(:shelter, 10) }

  describe 'gets all shelters', :type => :request do
    before { get shelters_path }

    it 'returns all of the shelters' do
      expect(JSON.parse(response.body).size).to eq(10)
    end

    it 'returns status code of 200' do
      expect(response).to have_http_status(:success)
    end
  end
end