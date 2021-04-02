class PetsController < ApplicationController
    
    def index
      json_response(shelter.pets)
    end
  
    def create
      @pet = shelter.pets.create!(pet_params)
      json_response(@pet, :created)
    end
  
    def show
      @pet = Pet.find(params[:id])
      json_response(@pet)
    end
  
    def update
      @pet = Pet.find(params[:id])
      @pet.update!(pet_params)
      json_response(pet, :created)
    end
  
    def destroy
      Pet.find(params[:id]).destroy!
    end
  
    private
  
    def shelter
      shelter ||= Shelter.find(params[:shelter_id])
    end
  
    def pet_params
      params.permit(:name, :animal_type, :breed, :dog_id)
    end
  end
  