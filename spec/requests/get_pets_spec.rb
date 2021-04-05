# require 'rails_helper'

# describe 'Get all of the pets', :type => :request do

#   before do
#     shelter =  FactoryBot.create(:shelter) 
#     get api_v1_shelter_pets_path(shelter.id)
#   end    

#   let!(:pets) { FactoryBot.create_list(:pet, 10) }

#   it 'returns all of the pets' do
#     expect(JSON.parse(response.body).size).to eq(10)
#   end

#   it 'returns status code of 200' do
#     expect(response).to have_http_status(:success)
#   end
# end